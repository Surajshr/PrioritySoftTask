import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_cubit.freezed.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState());

  void onAddClick(int value) {
    value++;
    emit(
      state.copyWith(
        itemCount: value,
      ),
    );
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
