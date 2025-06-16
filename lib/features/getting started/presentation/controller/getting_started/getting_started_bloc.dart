// import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'getting_started_event.dart';
import 'getting_started_state.dart';

class GettingStartedBloc
    extends Bloc<GettingStartedEvent, GettingStartedState> {
  GettingStartedBloc() : super(const GettingStartedState.initial()) {
    on<Started>(_onStarted);
    on<LogoShown>(_onLogoShown);
  }
  Future<void> _onStarted(
    Started event,
    Emitter<GettingStartedState> emit,
  ) async {
    emit(const GettingStartedState.showLogo());

    await Future.delayed(const Duration(seconds: 3));
    log('proceeding to show logo');
    add(const GettingStartedEvent.logoShown());
  }

  void _onLogoShown(LogoShown event, Emitter<GettingStartedState> emit) {
    emit(const GettingStartedState.showOnboarding());
  }
}
