import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/banner_entity.dart';
import '../../../domain/entities/restaurant_entity.dart';
import '../../../domain/entities/service_entity.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<BannerEntity> banners,
    @Default([]) List<RestaurantEntity> restaurants,
    @Default([]) List<ServiceEntity> services,
    @Default(0) int currentBannerIndex,
    String? error,
    @Default(false) bool isBannersLoading,
    @Default(false) bool isRestaurantsLoading,
    @Default(false) bool isServicesLoading,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState();
}
