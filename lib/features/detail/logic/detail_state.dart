part of 'detail_cubit.dart';
@freezed
class DetailState with _$DetailState {
  const DetailState._();

  const factory DetailState({
    @Default(0) int selectedColorIndex,
    @Default(0) int sizeActiveIndex,
    @Default(0) int itemCount,
    @Default(false) bool isAddClick,
  }) = _DetailState;
}
