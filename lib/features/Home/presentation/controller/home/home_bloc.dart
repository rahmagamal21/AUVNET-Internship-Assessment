import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/get_banner_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetBannersUseCase getBannersUseCase;
  HomeBloc(this.getBannersUseCase) : super(HomeState.initial()) {
    on<GetBannersEvent>(_onGetBanners);
    on<UpdateBannerIndex>(_onUpdateBannerIndex);
  }
  Future<void> _onGetBanners(
    GetBannersEvent event,
    Emitter<HomeState> emit,
  ) async {
    log("🚀 Event triggered: GetBannersEvent");
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final banners = await getBannersUseCase();
      log("✅ Banners received: $banners");
      emit(state.copyWith(banners: banners, isLoading: false));
    } catch (e) {
      log("❌ Error: $e");
      emit(state.copyWith(error: e.toString(), isLoading: false));
    }
  }

  void _onUpdateBannerIndex(UpdateBannerIndex event, Emitter<HomeState> emit) {
    emit(state.copyWith(currentBannerIndex: event.index));
  }
}
