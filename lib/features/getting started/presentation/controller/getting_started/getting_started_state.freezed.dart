// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'getting_started_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GettingStartedState {
  int get index => throw _privateConstructorUsedError;

  /// Create a copy of GettingStartedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GettingStartedStateCopyWith<GettingStartedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GettingStartedStateCopyWith<$Res> {
  factory $GettingStartedStateCopyWith(
          GettingStartedState value, $Res Function(GettingStartedState) then) =
      _$GettingStartedStateCopyWithImpl<$Res, GettingStartedState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$GettingStartedStateCopyWithImpl<$Res, $Val extends GettingStartedState>
    implements $GettingStartedStateCopyWith<$Res> {
  _$GettingStartedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GettingStartedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GettingStartedStateImplCopyWith<$Res>
    implements $GettingStartedStateCopyWith<$Res> {
  factory _$$GettingStartedStateImplCopyWith(_$GettingStartedStateImpl value,
          $Res Function(_$GettingStartedStateImpl) then) =
      __$$GettingStartedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$GettingStartedStateImplCopyWithImpl<$Res>
    extends _$GettingStartedStateCopyWithImpl<$Res, _$GettingStartedStateImpl>
    implements _$$GettingStartedStateImplCopyWith<$Res> {
  __$$GettingStartedStateImplCopyWithImpl(_$GettingStartedStateImpl _value,
      $Res Function(_$GettingStartedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GettingStartedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$GettingStartedStateImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GettingStartedStateImpl implements _GettingStartedState {
  const _$GettingStartedStateImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'GettingStartedState(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingStartedStateImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of GettingStartedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GettingStartedStateImplCopyWith<_$GettingStartedStateImpl> get copyWith =>
      __$$GettingStartedStateImplCopyWithImpl<_$GettingStartedStateImpl>(
          this, _$identity);
}

abstract class _GettingStartedState implements GettingStartedState {
  const factory _GettingStartedState({required final int index}) =
      _$GettingStartedStateImpl;

  @override
  int get index;

  /// Create a copy of GettingStartedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GettingStartedStateImplCopyWith<_$GettingStartedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
