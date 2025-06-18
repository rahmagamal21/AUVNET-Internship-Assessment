import 'dart:developer';

import 'package:auvnet_task/features/Home/domain/usecases/get_restaurant_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/get_banner_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetBannersUseCase getBannersUseCase;
  final GetRestaurantsUseCase getRestaurantsUseCase;
  HomeBloc(this.getBannersUseCase, this.getRestaurantsUseCase)
    : super(HomeState.initial()) {
    on<GetBannersEvent>(_onGetBanners);
    on<UpdateBannerIndex>(_onUpdateBannerIndex);
    on<GetRestaurantsEvent>(_onGetRestaurants);
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

  Future<void> _onGetRestaurants(
    GetRestaurantsEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final restaurants = await getRestaurantsUseCase();
      emit(state.copyWith(restaurants: restaurants, isLoading: false));
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isLoading: false));
    }
  }
}
