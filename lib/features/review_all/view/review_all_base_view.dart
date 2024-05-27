import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/modes/shoes_model.dart';
import 'package:priority_soft_task/features/detail/view/widgets/review_detail_card.dart';
import 'package:priority_soft_task/features/review_all/logic/review_all_cubit.dart';
import 'package:priority_soft_task/features/review_all/view/widgets/review_all_tabs.dart';
import 'package:priority_soft_task/features/review_all/view/widgets/review_top_view.dart';

class ReviewAllBaseView extends StatefulWidget {
  const ReviewAllBaseView({
    super.key,
    required this.review,
  });

  final List<Review> review;

  @override
  State<ReviewAllBaseView> createState() => _ReviewAllBaseViewState();
}

class _ReviewAllBaseViewState extends State<ReviewAllBaseView> {
  @override
  void initState() {
    BlocProvider.of<ReviewALlCubit>(context).searchReviews(
      reviews: widget.review,
      searchTerm: '',
      isInitial: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    dPrint('reviewAllDataLength:${widget.review.length}');
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const ReviewTopView(),
          30.toHGap(),
          ReviewAllTabs(
            review: widget.review,
          ),
          Expanded(
            child: BlocBuilder<ReviewALlCubit, ReviewAllState>(
              builder: (BuildContext context, ReviewAllState state) {
                return state.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : state.reviewsData.isNotEmpty
                        ? ListView.builder(
                            padding: EdgeInsets.only(
                              top: 30.h,
                              left: 30.w,
                            ),
                            shrinkWrap: true,
                            // physics: const NeverScrollableScrollPhysics(),
                            itemCount: state.reviewsData.length,
                            itemBuilder: (
                              context,
                              index,
                            ) {
                              return ReviewDetailCard(
                                review: state.reviewsData[index],
                              );
                            })
                        : Center(
                            child: Image.asset(
                              Assets.emptyIcon,
                              height: 200.w,
                              width: 200.w,
                            ),
                          );
              },
            ),
          ),
        ],
      ),
    );
  }
}
