part of 'cart_cubit.dart';
@freezed
class CartState with _$CartState {
  const CartState._();

  const factory CartState({

    @Default(0) int itemCount,
    @Default(false) bool isLoading,
    @Default([]) List<AddedToCardModel> addedToCardItems,

  }) = _CartState;
}
