import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/locator/locator.dart';
import 'package:priority_soft_task/core/services/firebase_service.dart';

import '../../../core/modes/shoes_model.dart';

part 'detail_cubit.freezed.dart';

part 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit() : super(const DetailState());
  final TextEditingController numberController = TextEditingController();
  final firebaseService = locator<FirebaseService>();

  void onColorSelected(int index) {
    emit(
      state.copyWith(
        selectedColorIndex: index,
      ),
    );
  }

  void onInit() {
    numberController.text = '1';
  }

  void onShoesSizeSelected(int index, String selectedSize) {
    emit(
      state.copyWith(
        sizeActiveIndex: index,
        selectedSize: selectedSize,
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

  Future<bool> addItemToCard({
    required ShoesModel shoesModel,
    required String quantity,
    required String size,
  }) async {
    return await firebaseService.addItemToCard(
      shoes: shoesModel,
      quantity: quantity,
      size: size,
    );
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
