import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_cubit.freezed.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(const FilterState());

  void onBrandSelect(int index) {
    emit(
      state.copyWith(
        selectedBrandIndex: index,
      ),
    );
  }

  void onSliderDrag(
    double lowerValue,
    double upperValue,
  ) {
    emit(
      state.copyWith(
        sliderLowerValue: lowerValue,
        sliderUpperValue: upperValue,
      ),
    );
  }

  void onFilterBySelected(
    int index,
  ) {
    emit(
      state.copyWith(
        selectedFilterByIndex: index,
      ),
    );
  }
  void onGenderSelected(
    int index,
  ) {
    emit(
      state.copyWith(
        selectedGenderIndex: index,
      ),
    );
  }
  void onColorItemSelected(
    int index,
  ) {
    emit(
      state.copyWith(
        selectedColorIndex: index,
      ),
    );
  }
}
