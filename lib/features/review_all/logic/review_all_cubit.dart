import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/modes/shoes_model.dart';

part 'review_all_cubit.freezed.dart';

part 'review_all_state.dart';

class ReviewALlCubit extends Cubit<ReviewAllState> {
  ReviewALlCubit() : super(const ReviewAllState());

  void onTabSelected(int index) {
    emit(
      state.copyWith(
        selectedTabIndex: index,
      ),
    );
  }

  Future<void> searchReviews({
    required List<Review> reviews,
    required String searchTerm,
    final bool isInitial = false,
  }) async {
    try {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      if (isInitial) {
        emit(
          state.copyWith(
            reviewsData: reviews,
            isLoading: false,
          ),
        );
      } else {
        final filteredData = reviews
            .where((review) => review.rate!.contains(searchTerm))
            .toList();
        dPrint('filteredValueFromD:${searchTerm},filter:$filteredData');
        emit(
          state.copyWith(
            reviewsData: filteredData,
            isLoading: false,
          ),
        );
      }
    } catch (e) {
      dPrint('failed to filter');
      emit(
        state.copyWith(
          reviewsData: reviews,
          isLoading: false,
        ),
      );
    }
  }
}
