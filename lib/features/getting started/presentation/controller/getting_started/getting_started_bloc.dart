import 'package:bloc/bloc.dart';

import 'getting_started_event.dart';
import 'getting_started_state.dart';

class GettingStartedBloc
    extends Bloc<GettingStartedEvent, GettingStartedState> {
  GettingStartedBloc() : super(GettingStartedState.initial()) {
    on<Started>(_onStarted);
    on<LogoShown>(_onLogoShown);
    on<NextPressed>(_onNextPressed);
    on<SkipPressed>(_onSkipPressed);
  }
  Future<void> _onStarted(
    Started event,
    Emitter<GettingStartedState> emit,
  ) async {
    emit(const GettingStartedState(index: -1));

    await Future.delayed(const Duration(seconds: 3));

    add(const GettingStartedEvent.logoShown());
  }

  void _onLogoShown(LogoShown event, Emitter<GettingStartedState> emit) {
    emit(const GettingStartedState(index: 0));
  }

  void _onNextPressed(NextPressed event, Emitter<GettingStartedState> emit) {
    if (state.index < 2) {
      emit(GettingStartedState(index: state.index + 1));
    }
  }

  void _onSkipPressed(SkipPressed event, Emitter<GettingStartedState> emit) {
    // move to login screen
  }
}
