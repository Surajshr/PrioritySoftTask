// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_all_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewAllState {
  int get selectedTabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewAllStateCopyWith<ReviewAllState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewAllStateCopyWith<$Res> {
  factory $ReviewAllStateCopyWith(
          ReviewAllState value, $Res Function(ReviewAllState) then) =
      _$ReviewAllStateCopyWithImpl<$Res, ReviewAllState>;
  @useResult
  $Res call({int selectedTabIndex});
}

/// @nodoc
class _$ReviewAllStateCopyWithImpl<$Res, $Val extends ReviewAllState>
    implements $ReviewAllStateCopyWith<$Res> {
  _$ReviewAllStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewALlStateImplCopyWith<$Res>
    implements $ReviewAllStateCopyWith<$Res> {
  factory _$$ReviewALlStateImplCopyWith(_$ReviewALlStateImpl value,
          $Res Function(_$ReviewALlStateImpl) then) =
      __$$ReviewALlStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedTabIndex});
}

/// @nodoc
class __$$ReviewALlStateImplCopyWithImpl<$Res>
    extends _$ReviewAllStateCopyWithImpl<$Res, _$ReviewALlStateImpl>
    implements _$$ReviewALlStateImplCopyWith<$Res> {
  __$$ReviewALlStateImplCopyWithImpl(
      _$ReviewALlStateImpl _value, $Res Function(_$ReviewALlStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
  }) {
    return _then(_$ReviewALlStateImpl(
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReviewALlStateImpl extends _ReviewALlState {
  const _$ReviewALlStateImpl({this.selectedTabIndex = 0}) : super._();

  @override
  @JsonKey()
  final int selectedTabIndex;

  @override
  String toString() {
    return 'ReviewAllState(selectedTabIndex: $selectedTabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewALlStateImpl &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewALlStateImplCopyWith<_$ReviewALlStateImpl> get copyWith =>
      __$$ReviewALlStateImplCopyWithImpl<_$ReviewALlStateImpl>(
          this, _$identity);
}

abstract class _ReviewALlState extends ReviewAllState {
  const factory _ReviewALlState({final int selectedTabIndex}) =
      _$ReviewALlStateImpl;
  const _ReviewALlState._() : super._();

  @override
  int get selectedTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$ReviewALlStateImplCopyWith<_$ReviewALlStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
