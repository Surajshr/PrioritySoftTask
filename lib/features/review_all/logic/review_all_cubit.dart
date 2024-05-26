import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_all_state.dart';

part 'review_all_cubit.freezed.dart';

class ReviewALlCubit extends Cubit<ReviewAllState> {
  ReviewALlCubit() : super(const ReviewAllState());

  void onTabSelected(int index) {
    emit(
      state.copyWith(
        selectedTabIndex: index,
      ),
    );
  }
}
