// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailState {
  int get selectedColorIndex => throw _privateConstructorUsedError;
  int get sizeActiveIndex => throw _privateConstructorUsedError;
  String get selectedSize => throw _privateConstructorUsedError;
  int get itemCount => throw _privateConstructorUsedError;
  bool get isAddClick => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call(
      {int selectedColorIndex,
      int sizeActiveIndex,
      String selectedSize,
      int itemCount,
      bool isAddClick});
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedColorIndex = null,
    Object? sizeActiveIndex = null,
    Object? selectedSize = null,
    Object? itemCount = null,
    Object? isAddClick = null,
  }) {
    return _then(_value.copyWith(
      selectedColorIndex: null == selectedColorIndex
          ? _value.selectedColorIndex
          : selectedColorIndex // ignore: cast_nullable_to_non_nullable
              as int,
      sizeActiveIndex: null == sizeActiveIndex
          ? _value.sizeActiveIndex
          : sizeActiveIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedSize: null == selectedSize
          ? _value.selectedSize
          : selectedSize // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      isAddClick: null == isAddClick
          ? _value.isAddClick
          : isAddClick // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailStateImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$DetailStateImplCopyWith(
          _$DetailStateImpl value, $Res Function(_$DetailStateImpl) then) =
      __$$DetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedColorIndex,
      int sizeActiveIndex,
      String selectedSize,
      int itemCount,
      bool isAddClick});
}

/// @nodoc
class __$$DetailStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateImpl>
    implements _$$DetailStateImplCopyWith<$Res> {
  __$$DetailStateImplCopyWithImpl(
      _$DetailStateImpl _value, $Res Function(_$DetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedColorIndex = null,
    Object? sizeActiveIndex = null,
    Object? selectedSize = null,
    Object? itemCount = null,
    Object? isAddClick = null,
  }) {
    return _then(_$DetailStateImpl(
      selectedColorIndex: null == selectedColorIndex
          ? _value.selectedColorIndex
          : selectedColorIndex // ignore: cast_nullable_to_non_nullable
              as int,
      sizeActiveIndex: null == sizeActiveIndex
          ? _value.sizeActiveIndex
          : sizeActiveIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedSize: null == selectedSize
          ? _value.selectedSize
          : selectedSize // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      isAddClick: null == isAddClick
          ? _value.isAddClick
          : isAddClick // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailStateImpl extends _DetailState {
  const _$DetailStateImpl(
      {this.selectedColorIndex = 0,
      this.sizeActiveIndex = 0,
      this.selectedSize = '0',
      this.itemCount = 0,
      this.isAddClick = false})
      : super._();

  @override
  @JsonKey()
  final int selectedColorIndex;
  @override
  @JsonKey()
  final int sizeActiveIndex;
  @override
  @JsonKey()
  final String selectedSize;
  @override
  @JsonKey()
  final int itemCount;
  @override
  @JsonKey()
  final bool isAddClick;

  @override
  String toString() {
    return 'DetailState(selectedColorIndex: $selectedColorIndex, sizeActiveIndex: $sizeActiveIndex, selectedSize: $selectedSize, itemCount: $itemCount, isAddClick: $isAddClick)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateImpl &&
            (identical(other.selectedColorIndex, selectedColorIndex) ||
                other.selectedColorIndex == selectedColorIndex) &&
            (identical(other.sizeActiveIndex, sizeActiveIndex) ||
                other.sizeActiveIndex == sizeActiveIndex) &&
            (identical(other.selectedSize, selectedSize) ||
                other.selectedSize == selectedSize) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount) &&
            (identical(other.isAddClick, isAddClick) ||
                other.isAddClick == isAddClick));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedColorIndex,
      sizeActiveIndex, selectedSize, itemCount, isAddClick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      __$$DetailStateImplCopyWithImpl<_$DetailStateImpl>(this, _$identity);
}

abstract class _DetailState extends DetailState {
  const factory _DetailState(
      {final int selectedColorIndex,
      final int sizeActiveIndex,
      final String selectedSize,
      final int itemCount,
      final bool isAddClick}) = _$DetailStateImpl;
  const _DetailState._() : super._();

  @override
  int get selectedColorIndex;
  @override
  int get sizeActiveIndex;
  @override
  String get selectedSize;
  @override
  int get itemCount;
  @override
  bool get isAddClick;
  @override
  @JsonKey(ignore: true)
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
