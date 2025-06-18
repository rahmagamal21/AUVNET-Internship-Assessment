// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBanners,
    required TResult Function(int index) updateBannerIndex,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBanners,
    TResult? Function(int index)? updateBannerIndex,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBanners,
    TResult Function(int index)? updateBannerIndex,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBannersEvent value) getBanners,
    required TResult Function(UpdateBannerIndex value) updateBannerIndex,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBannersEvent value)? getBanners,
    TResult? Function(UpdateBannerIndex value)? updateBannerIndex,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBannersEvent value)? getBanners,
    TResult Function(UpdateBannerIndex value)? updateBannerIndex,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetBannersEventImplCopyWith<$Res> {
  factory _$$GetBannersEventImplCopyWith(
    _$GetBannersEventImpl value,
    $Res Function(_$GetBannersEventImpl) then,
  ) = __$$GetBannersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBannersEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetBannersEventImpl>
    implements _$$GetBannersEventImplCopyWith<$Res> {
  __$$GetBannersEventImplCopyWithImpl(
    _$GetBannersEventImpl _value,
    $Res Function(_$GetBannersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetBannersEventImpl implements GetBannersEvent {
  const _$GetBannersEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getBanners()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBannersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBanners,
    required TResult Function(int index) updateBannerIndex,
  }) {
    return getBanners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBanners,
    TResult? Function(int index)? updateBannerIndex,
  }) {
    return getBanners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBanners,
    TResult Function(int index)? updateBannerIndex,
    required TResult orElse(),
  }) {
    if (getBanners != null) {
      return getBanners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBannersEvent value) getBanners,
    required TResult Function(UpdateBannerIndex value) updateBannerIndex,
  }) {
    return getBanners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBannersEvent value)? getBanners,
    TResult? Function(UpdateBannerIndex value)? updateBannerIndex,
  }) {
    return getBanners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBannersEvent value)? getBanners,
    TResult Function(UpdateBannerIndex value)? updateBannerIndex,
    required TResult orElse(),
  }) {
    if (getBanners != null) {
      return getBanners(this);
    }
    return orElse();
  }
}

abstract class GetBannersEvent implements HomeEvent {
  const factory GetBannersEvent() = _$GetBannersEventImpl;
}

/// @nodoc
abstract class _$$UpdateBannerIndexImplCopyWith<$Res> {
  factory _$$UpdateBannerIndexImplCopyWith(
    _$UpdateBannerIndexImpl value,
    $Res Function(_$UpdateBannerIndexImpl) then,
  ) = __$$UpdateBannerIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdateBannerIndexImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateBannerIndexImpl>
    implements _$$UpdateBannerIndexImplCopyWith<$Res> {
  __$$UpdateBannerIndexImplCopyWithImpl(
    _$UpdateBannerIndexImpl _value,
    $Res Function(_$UpdateBannerIndexImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$UpdateBannerIndexImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$UpdateBannerIndexImpl implements UpdateBannerIndex {
  const _$UpdateBannerIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.updateBannerIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBannerIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBannerIndexImplCopyWith<_$UpdateBannerIndexImpl> get copyWith =>
      __$$UpdateBannerIndexImplCopyWithImpl<_$UpdateBannerIndexImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBanners,
    required TResult Function(int index) updateBannerIndex,
  }) {
    return updateBannerIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBanners,
    TResult? Function(int index)? updateBannerIndex,
  }) {
    return updateBannerIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBanners,
    TResult Function(int index)? updateBannerIndex,
    required TResult orElse(),
  }) {
    if (updateBannerIndex != null) {
      return updateBannerIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBannersEvent value) getBanners,
    required TResult Function(UpdateBannerIndex value) updateBannerIndex,
  }) {
    return updateBannerIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBannersEvent value)? getBanners,
    TResult? Function(UpdateBannerIndex value)? updateBannerIndex,
  }) {
    return updateBannerIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBannersEvent value)? getBanners,
    TResult Function(UpdateBannerIndex value)? updateBannerIndex,
    required TResult orElse(),
  }) {
    if (updateBannerIndex != null) {
      return updateBannerIndex(this);
    }
    return orElse();
  }
}

abstract class UpdateBannerIndex implements HomeEvent {
  const factory UpdateBannerIndex(final int index) = _$UpdateBannerIndexImpl;

  int get index;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateBannerIndexImplCopyWith<_$UpdateBannerIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
