import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/modes/shoes_model.dart';
import 'package:priority_soft_task/features/review_all/logic/review_all_cubit.dart';

class ReviewAllTabs extends StatelessWidget {
  const ReviewAllTabs({
    super.key,
    required this.review,
  });

  final List<Review> review;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      width: 1.sw,
      child: ListView.builder(
        padding: EdgeInsets.only(
          left: 30.w,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: AppStrings.reviewALlTabs.length,
        itemBuilder: (context, index) {
          return BlocSelector<ReviewALlCubit, ReviewAllState, int>(
            selector: (state) => state.selectedTabIndex,
            builder: (BuildContext context, selectedIndex) {
              final cubit = context.read<ReviewALlCubit>();
              return GestureDetector(
                onTap: () async {
                  if (index > 0) {
                    final selectedStar =
                        AppStrings.reviewALlTabs[index].split(' ');
                    final star = selectedStar[0];
                    await cubit.searchReviews(
                      reviews: review,
                      searchTerm: star,
                    );
                  } else {
                    await cubit.searchReviews(
                      reviews: review,
                      searchTerm: '',
                      isInitial: true,
                    );
                  }
                  cubit.onTabSelected(index);
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Text(
                    AppStrings.reviewALlTabs[index],
                    style: AppTextStyle.headline600.copyWith(
                      color: selectedIndex == index
                          ? null
                          : AppColor.primaryNeutral300,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
