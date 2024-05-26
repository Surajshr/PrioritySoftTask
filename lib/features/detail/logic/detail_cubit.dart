import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:priority_soft_task/common/ui.dart';

part 'detail_cubit.freezed.dart';

part 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit() : super(const DetailState());
  final TextEditingController numberController = TextEditingController();

  void onColorSelected(int index) {
    emit(
      state.copyWith(
        selectedColorIndex: index,
      ),
    );
  }

  void onShoesSizeSelected(int index) {
    emit(
      state.copyWith(
        sizeActiveIndex: index,
      ),
    );
  }

  void onChangeTextField(String value) {
    numberController.text = value;
    emit(
      state.copyWith(
        itemCount: int.parse(value),
      ),
    );
  }

  void onAddClick(String value) {
    int itemCount = int.parse(value);
    itemCount++;
    emit(
      state.copyWith(
        isAddClick: true,
        itemCount: itemCount,
      ),
    );
    numberController.text = value;
  }

  void onSubtractClick(String value) {
    int itemCount = int.parse(value);

    if (itemCount > 1) {
      itemCount--;
      emit(
        state.copyWith(
          isAddClick: false,
          itemCount: itemCount,
        ),
      );
      numberController.text = value;
    }
  }
}
