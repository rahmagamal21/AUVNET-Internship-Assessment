import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthBloc() : super(const AuthState.initial()) {
    on<LoginPressed>(_onLoginPressed);
    on<SignUpPressed>(_onSignUpPressed);
  }

  FutureOr<void> _onLoginPressed(
    LoginPressed event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      await _auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text,
      );

      emit(const AuthState.success());
    } on FirebaseAuthException catch (e) {
      emit(AuthState.failure(e.message ?? 'Login failed'));
    }

    // await Future.delayed(const Duration(seconds: 1));

    // if (emailController.text == 'test@mail.com' &&
    //     passwordController.text == '123456') {
    //   emit(const AuthState.success());
    // } else {
    //   emit(const AuthState.failure('Invalid email or password'));
    // }
  }

  FutureOr<void> _onSignUpPressed(
    SignUpPressed event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      if (passwordController.text != confirmPasswordController.text) {
        emit(const AuthState.failure('Passwords do not match'));
        return;
      }

      final credential = await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text,
      );

      final user = credential.user;

      if (user != null) {
        await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
          'uid': user.uid,
          'email': user.email,
          'name': user.email!.split('@')[0],
          'profileImage': '',
        });
      }

      emit(const AuthState.success());
    } on FirebaseAuthException catch (e) {
      emit(AuthState.failure(e.message ?? 'Sign up failed'));
    }

    // await Future.delayed(const Duration(seconds: 1));

    // if (passwordController.text != confirmPasswordController.text) {
    //   emit(const AuthState.failure('Passwords do not match'));
    //   return;
    // }

    //emit(const AuthState.success());
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }
}
