part of 'filter_cubit.dart';

@freezed
class FilterState with _$FilterState {
  const FilterState._();

  const factory FilterState({
    @Default(0) int selectedBrandIndex,
    @Default(200) double sliderLowerValue,
    @Default(750) double sliderUpperValue,
    @Default(0) int selectedFilterByIndex,
    @Default(0) int selectedGenderIndex,
    @Default(0) int selectedColorIndex,
  }) = _FilterState;
}
