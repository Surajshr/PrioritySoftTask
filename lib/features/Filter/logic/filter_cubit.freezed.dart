// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterState {
  int get selectedBrandIndex => throw _privateConstructorUsedError;
  double get sliderLowerValue => throw _privateConstructorUsedError;
  double get sliderUpperValue => throw _privateConstructorUsedError;
  int get selectedFilterByIndex => throw _privateConstructorUsedError;
  int get selectedGenderIndex => throw _privateConstructorUsedError;
  int get selectedColorIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call(
      {int selectedBrandIndex,
      double sliderLowerValue,
      double sliderUpperValue,
      int selectedFilterByIndex,
      int selectedGenderIndex,
      int selectedColorIndex});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBrandIndex = null,
    Object? sliderLowerValue = null,
    Object? sliderUpperValue = null,
    Object? selectedFilterByIndex = null,
    Object? selectedGenderIndex = null,
    Object? selectedColorIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedBrandIndex: null == selectedBrandIndex
          ? _value.selectedBrandIndex
          : selectedBrandIndex // ignore: cast_nullable_to_non_nullable
              as int,
      sliderLowerValue: null == sliderLowerValue
          ? _value.sliderLowerValue
          : sliderLowerValue // ignore: cast_nullable_to_non_nullable
              as double,
      sliderUpperValue: null == sliderUpperValue
          ? _value.sliderUpperValue
          : sliderUpperValue // ignore: cast_nullable_to_non_nullable
              as double,
      selectedFilterByIndex: null == selectedFilterByIndex
          ? _value.selectedFilterByIndex
          : selectedFilterByIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedGenderIndex: null == selectedGenderIndex
          ? _value.selectedGenderIndex
          : selectedGenderIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedColorIndex: null == selectedColorIndex
          ? _value.selectedColorIndex
          : selectedColorIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterStateImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$FilterStateImplCopyWith(
          _$FilterStateImpl value, $Res Function(_$FilterStateImpl) then) =
      __$$FilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedBrandIndex,
      double sliderLowerValue,
      double sliderUpperValue,
      int selectedFilterByIndex,
      int selectedGenderIndex,
      int selectedColorIndex});
}

/// @nodoc
class __$$FilterStateImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$FilterStateImpl>
    implements _$$FilterStateImplCopyWith<$Res> {
  __$$FilterStateImplCopyWithImpl(
      _$FilterStateImpl _value, $Res Function(_$FilterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBrandIndex = null,
    Object? sliderLowerValue = null,
    Object? sliderUpperValue = null,
    Object? selectedFilterByIndex = null,
    Object? selectedGenderIndex = null,
    Object? selectedColorIndex = null,
  }) {
    return _then(_$FilterStateImpl(
      selectedBrandIndex: null == selectedBrandIndex
          ? _value.selectedBrandIndex
          : selectedBrandIndex // ignore: cast_nullable_to_non_nullable
              as int,
      sliderLowerValue: null == sliderLowerValue
          ? _value.sliderLowerValue
          : sliderLowerValue // ignore: cast_nullable_to_non_nullable
              as double,
      sliderUpperValue: null == sliderUpperValue
          ? _value.sliderUpperValue
          : sliderUpperValue // ignore: cast_nullable_to_non_nullable
              as double,
      selectedFilterByIndex: null == selectedFilterByIndex
          ? _value.selectedFilterByIndex
          : selectedFilterByIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedGenderIndex: null == selectedGenderIndex
          ? _value.selectedGenderIndex
          : selectedGenderIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedColorIndex: null == selectedColorIndex
          ? _value.selectedColorIndex
          : selectedColorIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterStateImpl extends _FilterState {
  const _$FilterStateImpl(
      {this.selectedBrandIndex = 0,
      this.sliderLowerValue = 200,
      this.sliderUpperValue = 750,
      this.selectedFilterByIndex = 0,
      this.selectedGenderIndex = 0,
      this.selectedColorIndex = 0})
      : super._();

  @override
  @JsonKey()
  final int selectedBrandIndex;
  @override
  @JsonKey()
  final double sliderLowerValue;
  @override
  @JsonKey()
  final double sliderUpperValue;
  @override
  @JsonKey()
  final int selectedFilterByIndex;
  @override
  @JsonKey()
  final int selectedGenderIndex;
  @override
  @JsonKey()
  final int selectedColorIndex;

  @override
  String toString() {
    return 'FilterState(selectedBrandIndex: $selectedBrandIndex, sliderLowerValue: $sliderLowerValue, sliderUpperValue: $sliderUpperValue, selectedFilterByIndex: $selectedFilterByIndex, selectedGenderIndex: $selectedGenderIndex, selectedColorIndex: $selectedColorIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterStateImpl &&
            (identical(other.selectedBrandIndex, selectedBrandIndex) ||
                other.selectedBrandIndex == selectedBrandIndex) &&
            (identical(other.sliderLowerValue, sliderLowerValue) ||
                other.sliderLowerValue == sliderLowerValue) &&
            (identical(other.sliderUpperValue, sliderUpperValue) ||
                other.sliderUpperValue == sliderUpperValue) &&
            (identical(other.selectedFilterByIndex, selectedFilterByIndex) ||
                other.selectedFilterByIndex == selectedFilterByIndex) &&
            (identical(other.selectedGenderIndex, selectedGenderIndex) ||
                other.selectedGenderIndex == selectedGenderIndex) &&
            (identical(other.selectedColorIndex, selectedColorIndex) ||
                other.selectedColorIndex == selectedColorIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedBrandIndex,
      sliderLowerValue,
      sliderUpperValue,
      selectedFilterByIndex,
      selectedGenderIndex,
      selectedColorIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      __$$FilterStateImplCopyWithImpl<_$FilterStateImpl>(this, _$identity);
}

abstract class _FilterState extends FilterState {
  const factory _FilterState(
      {final int selectedBrandIndex,
      final double sliderLowerValue,
      final double sliderUpperValue,
      final int selectedFilterByIndex,
      final int selectedGenderIndex,
      final int selectedColorIndex}) = _$FilterStateImpl;
  const _FilterState._() : super._();

  @override
  int get selectedBrandIndex;
  @override
  double get sliderLowerValue;
  @override
  double get sliderUpperValue;
  @override
  int get selectedFilterByIndex;
  @override
  int get selectedGenderIndex;
  @override
  int get selectedColorIndex;
  @override
  @JsonKey(ignore: true)
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
