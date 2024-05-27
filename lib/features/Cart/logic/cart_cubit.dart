import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:priority_soft_task/core/locator/locator.dart';
import 'package:priority_soft_task/core/modes/added_card_model.dart';
import 'package:priority_soft_task/core/services/firebase_service.dart';

part 'cart_cubit.freezed.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState());
  final firebaseService = locator<FirebaseService>();

  void onAddClick(int value) {
    value++;
    emit(
      state.copyWith(
        itemCount: value,
      ),
    );
  }

  Future<void> fetchDataFromAddedCard() async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    try {
      final data = await firebaseService.fetchDataFromAddedCard();
      emit(
        state.copyWith(
          addedToCardItems: data,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          addedToCardItems: [],
          isLoading: false,
        ),
      );
    }
  }

  void onSubtractClick(int value) {
    if (value > 1) {
      value--;
      emit(
        state.copyWith(
          itemCount: value,
        ),
      );
    }
  }
}
