import 'package:auvnet_task/features/Home/domain/usecases/get_restaurant_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import '../../../data/models/hive models/banner_hive_model.dart';
import '../../../data/models/hive models/restaurant_hive_model.dart';
import '../../../data/models/hive models/service_hive_model.dart';
import '../../../data/models/hive models/user_hive_model.dart';
import '../../../domain/entities/banner_entity.dart';
import '../../../domain/entities/restaurant_entity.dart';
import '../../../domain/entities/service_entity.dart';
import '../../../domain/entities/user_entity.dart';
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
    final bannerBox = Hive.box<BannerHiveModel>('bannersBox');
    final localBanners = bannerBox.values.toList();

    if (localBanners.isNotEmpty) {
      emit(
        state.copyWith(
          banners: localBanners
              .map((e) => BannerEntity(imageUrl: e.imageUrl))
              .toList(),
          isBannersLoading: false,
        ),
      );
      return;
    }
    try {
      final banners = await getBannersUseCase();
      emit(state.copyWith(banners: banners, isBannersLoading: false));
      for (var banner in banners) {
        bannerBox.add(BannerHiveModel(imageUrl: banner.imageUrl));
      }
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

    final restaurantBox = Hive.box<RestaurantHiveModel>('restaurantsBox');
    final localRestaurants = restaurantBox.values.toList();

    if (localRestaurants.isNotEmpty) {
      emit(
        state.copyWith(
          restaurants: localRestaurants
              .map(
                (e) => RestaurantEntity(
                  deliveryTime: e.deliveryTime,
                  name: e.name,
                  imageUrl: e.imageUrl,
                ),
              )
              .toList(),
          isRestaurantsLoading: false,
        ),
      );
      return;
    }

    try {
      final restaurants = await getRestaurantsUseCase();
      emit(
        state.copyWith(restaurants: restaurants, isRestaurantsLoading: false),
      );

      for (var restaurant in restaurants) {
        restaurantBox.add(
          RestaurantHiveModel(
            deliveryTime: restaurant.deliveryTime,
            name: restaurant.name,
            imageUrl: restaurant.imageUrl,
          ),
        );
      }
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isRestaurantsLoading: false));
    }
  }

  Future<void> _onGetServices(
    GetServicesEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isServicesLoading: true, error: null));

    final serviceBox = Hive.box<ServiceHiveModel>('servicesBox');
    final localServices = serviceBox.values.toList();

    if (localServices.isNotEmpty) {
      emit(
        state.copyWith(
          services: localServices
              .map(
                (e) => ServiceEntity(
                  imageUrl: e.imageUrl,
                  tag: e.tag,
                  name: e.name,
                ),
              )
              .toList(),
          isServicesLoading: false,
        ),
      );
      return;
    }

    try {
      final services = await getServicesUseCase();
      emit(state.copyWith(services: services, isServicesLoading: false));

      for (var service in services) {
        serviceBox.add(
          ServiceHiveModel(
            imageUrl: service.imageUrl,
            tag: service.tag,
            name: service.name,
          ),
        );
      }
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isServicesLoading: false));
    }
  }

  Future<void> _onGetCurrentUser(
    GetCurrentUserEvent event,
    Emitter<HomeState> emit,
  ) async {
    final userBox = Hive.box<UserHiveModel>('userBox');
    final localUser = userBox.get('currentUser');

    if (localUser != null) {
      emit(
        state.copyWith(
          currentUser: UserEntity(
            id: localUser.id,
            name: localUser.name,
            email: localUser.email,
            profilePic: localUser.profileImage,
          ),
        ),
      );
      return;
    }

    try {
      final user = await getUserUseCase();
      emit(state.copyWith(currentUser: user));

      await userBox.put(
        'currentUser',
        UserHiveModel(
          id: user.id,
          name: user.name,
          email: user.email,
          profileImage: user.profilePic,
        ),
      );
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}
