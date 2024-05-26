part of 'review_all_cubit.dart';


@freezed
class ReviewAllState with _$ReviewAllState {
  const ReviewAllState._();

  const factory ReviewAllState({
    @Default(0) int selectedTabIndex,
  }) = _ReviewALlState;
}
