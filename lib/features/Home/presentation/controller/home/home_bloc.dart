import 'package:auvnet_task/features/Home/domain/usecases/get_restaurant_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/get_banner_usecase.dart';
import '../../../domain/usecases/get_service_usecase.dart';
import '../../../domain/usecases/get_user_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetBannersUseCase getBannersUseCase;
  final GetRestaurantsUseCase getRestaurantsUseCase;
  final GetServicesUseCase getServicesUseCase;
  final GetUserUseCase getUserUseCase;

  HomeBloc(
    this.getBannersUseCase,
    this.getRestaurantsUseCase,
    this.getServicesUseCase,
    this.getUserUseCase,
  ) : super(HomeState.initial()) {
    on<GetBannersEvent>(_onGetBanners);
    on<UpdateBannerIndex>(_onUpdateBannerIndex);
    on<GetRestaurantsEvent>(_onGetRestaurants);
    on<GetServicesEvent>(_onGetServices);
    on<GetCurrentUserEvent>(_onGetCurrentUser);
  }
  Future<void> _onGetBanners(
    GetBannersEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isBannersLoading: true, error: null));

    try {
      final banners = await getBannersUseCase();
      emit(state.copyWith(banners: banners, isBannersLoading: false));
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isBannersLoading: false));
    }
  }

  void _onUpdateBannerIndex(UpdateBannerIndex event, Emitter<HomeState> emit) {
    emit(state.copyWith(currentBannerIndex: event.index));
  }

  Future<void> _onGetRestaurants(
    GetRestaurantsEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isRestaurantsLoading: true, error: null));

    try {
      final restaurants = await getRestaurantsUseCase();
      emit(
        state.copyWith(restaurants: restaurants, isRestaurantsLoading: false),
      );
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isRestaurantsLoading: false));
    }
  }

  Future<void> _onGetServices(
    GetServicesEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isServicesLoading: true, error: null));

    try {
      final services = await getServicesUseCase();
      emit(state.copyWith(services: services, isServicesLoading: false));
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isServicesLoading: false));
    }
  }

  Future<void> _onGetCurrentUser(
    GetCurrentUserEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      final user = await getUserUseCase();
      emit(state.copyWith(currentUser: user));
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}
