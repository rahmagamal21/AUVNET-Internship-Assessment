import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/banner_entity.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<BannerEntity> banners,
    required bool isLoading,
    String? error,
    required int currentBannerIndex,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState(
    banners: [],
    isLoading: false,
    error: null,
    currentBannerIndex: 0,
  );
}
