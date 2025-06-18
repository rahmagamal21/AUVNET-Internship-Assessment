// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  List<BannerEntity> get banners => throw _privateConstructorUsedError;
  List<RestaurantEntity> get restaurants => throw _privateConstructorUsedError;
  List<ServiceEntity> get services => throw _privateConstructorUsedError;
  UserEntity? get currentUser => throw _privateConstructorUsedError;
  int get currentBannerIndex => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isBannersLoading => throw _privateConstructorUsedError;
  bool get isRestaurantsLoading => throw _privateConstructorUsedError;
  bool get isServicesLoading => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<BannerEntity> banners,
      List<RestaurantEntity> restaurants,
      List<ServiceEntity> services,
      UserEntity? currentUser,
      int currentBannerIndex,
      String? error,
      bool isBannersLoading,
      bool isRestaurantsLoading,
      bool isServicesLoading});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
    Object? restaurants = null,
    Object? services = null,
    Object? currentUser = freezed,
    Object? currentBannerIndex = null,
    Object? error = freezed,
    Object? isBannersLoading = null,
    Object? isRestaurantsLoading = null,
    Object? isServicesLoading = null,
  }) {
    return _then(_value.copyWith(
      banners: null == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerEntity>,
      restaurants: null == restaurants
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<RestaurantEntity>,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceEntity>,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      currentBannerIndex: null == currentBannerIndex
          ? _value.currentBannerIndex
          : currentBannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isBannersLoading: null == isBannersLoading
          ? _value.isBannersLoading
          : isBannersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRestaurantsLoading: null == isRestaurantsLoading
          ? _value.isRestaurantsLoading
          : isRestaurantsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isServicesLoading: null == isServicesLoading
          ? _value.isServicesLoading
          : isServicesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BannerEntity> banners,
      List<RestaurantEntity> restaurants,
      List<ServiceEntity> services,
      UserEntity? currentUser,
      int currentBannerIndex,
      String? error,
      bool isBannersLoading,
      bool isRestaurantsLoading,
      bool isServicesLoading});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
    Object? restaurants = null,
    Object? services = null,
    Object? currentUser = freezed,
    Object? currentBannerIndex = null,
    Object? error = freezed,
    Object? isBannersLoading = null,
    Object? isRestaurantsLoading = null,
    Object? isServicesLoading = null,
  }) {
    return _then(_$HomeStateImpl(
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerEntity>,
      restaurants: null == restaurants
          ? _value._restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<RestaurantEntity>,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceEntity>,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      currentBannerIndex: null == currentBannerIndex
          ? _value.currentBannerIndex
          : currentBannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isBannersLoading: null == isBannersLoading
          ? _value.isBannersLoading
          : isBannersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRestaurantsLoading: null == isRestaurantsLoading
          ? _value.isRestaurantsLoading
          : isRestaurantsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isServicesLoading: null == isServicesLoading
          ? _value.isServicesLoading
          : isServicesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {final List<BannerEntity> banners = const [],
      final List<RestaurantEntity> restaurants = const [],
      final List<ServiceEntity> services = const [],
      this.currentUser,
      this.currentBannerIndex = 0,
      this.error,
      this.isBannersLoading = false,
      this.isRestaurantsLoading = false,
      this.isServicesLoading = false})
      : _banners = banners,
        _restaurants = restaurants,
        _services = services;

  final List<BannerEntity> _banners;
  @override
  @JsonKey()
  List<BannerEntity> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  final List<RestaurantEntity> _restaurants;
  @override
  @JsonKey()
  List<RestaurantEntity> get restaurants {
    if (_restaurants is EqualUnmodifiableListView) return _restaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurants);
  }

  final List<ServiceEntity> _services;
  @override
  @JsonKey()
  List<ServiceEntity> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  final UserEntity? currentUser;
  @override
  @JsonKey()
  final int currentBannerIndex;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isBannersLoading;
  @override
  @JsonKey()
  final bool isRestaurantsLoading;
  @override
  @JsonKey()
  final bool isServicesLoading;

  @override
  String toString() {
    return 'HomeState(banners: $banners, restaurants: $restaurants, services: $services, currentUser: $currentUser, currentBannerIndex: $currentBannerIndex, error: $error, isBannersLoading: $isBannersLoading, isRestaurantsLoading: $isRestaurantsLoading, isServicesLoading: $isServicesLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.currentBannerIndex, currentBannerIndex) ||
                other.currentBannerIndex == currentBannerIndex) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isBannersLoading, isBannersLoading) ||
                other.isBannersLoading == isBannersLoading) &&
            (identical(other.isRestaurantsLoading, isRestaurantsLoading) ||
                other.isRestaurantsLoading == isRestaurantsLoading) &&
            (identical(other.isServicesLoading, isServicesLoading) ||
                other.isServicesLoading == isServicesLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_banners),
      const DeepCollectionEquality().hash(_restaurants),
      const DeepCollectionEquality().hash(_services),
      currentUser,
      currentBannerIndex,
      error,
      isBannersLoading,
      isRestaurantsLoading,
      isServicesLoading);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final List<BannerEntity> banners,
      final List<RestaurantEntity> restaurants,
      final List<ServiceEntity> services,
      final UserEntity? currentUser,
      final int currentBannerIndex,
      final String? error,
      final bool isBannersLoading,
      final bool isRestaurantsLoading,
      final bool isServicesLoading}) = _$HomeStateImpl;

  @override
  List<BannerEntity> get banners;
  @override
  List<RestaurantEntity> get restaurants;
  @override
  List<ServiceEntity> get services;
  @override
  UserEntity? get currentUser;
  @override
  int get currentBannerIndex;
  @override
  String? get error;
  @override
  bool get isBannersLoading;
  @override
  bool get isRestaurantsLoading;
  @override
  bool get isServicesLoading;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
