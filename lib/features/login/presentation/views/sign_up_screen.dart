import 'package:auvnet_task/core/common/res/utils/styles.dart';
import 'package:auvnet_task/features/getting%20started/presentation/views/widgets/start_button.dart';
import 'package:auvnet_task/features/login/presentation/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/res/utils/colors.dart';
import '../controller/auth/auth_bloc.dart';
import '../controller/auth/auth_event.dart';
import '../controller/auth/auth_state.dart';
import 'widgets/custom_text_button.dart';
import 'widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: BlocProvider(
          create: (_) => AuthBloc(),
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthFailure) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(state.message)));
              }

              if (state is AuthSuccess) {}
            },
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                final bloc = context.read<AuthBloc>();
                if (state is AuthLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 60.h),
                        Image.asset('assets/images/logo.png', height: 336.h),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Form(
                            key: formKey,
                            child: Column(
                              children: [
                                CustomTextField(
                                  controller: bloc.emailController,
                                  hintText: 'Email',
                                  icon: Icons.mail_outline,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Enter email';
                                    }
                                    if (!value.contains('@')) {
                                      return 'Invalid email';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  hintText: 'Password',
                                  icon: Icons.lock_outline,
                                  controller: bloc.passwordController,
                                  obscureText: true,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Enter password';
                                    }
                                    if (value.length < 6) {
                                      return 'Password too short';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  hintText: 'Confirm Password',
                                  icon: Icons.lock_outline,
                                  controller: bloc.confirmPasswordController,
                                  obscureText: true,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Confirm your password';
                                    }
                                    if (value != bloc.passwordController.text) {
                                      return 'Passwords do not match';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 32.h),
                        StartButton(
                          text: 'Sign Up',
                          textStyle: Styles.dmSansMedium().copyWith(
                            color: AppColors.white,
                          ),
                          onPressed: () {
                            bloc.add(const AuthEvent.signUpPressed());
                          },
                        ),
                        SizedBox(height: 16.h),
                        CustomTextButton(
                          text: 'Login',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const LoginScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
