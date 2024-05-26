import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/detail/view/widgets/review_detail_card.dart';
import 'package:priority_soft_task/features/review_all/logic/review_all_cubit.dart';
import 'package:priority_soft_task/features/review_all/view/widgets/review_all_tabs.dart';
import 'package:priority_soft_task/features/review_all/view/widgets/review_top_view.dart';

class ReviewAllBaseView extends StatefulWidget {
  const ReviewAllBaseView({super.key});

  @override
  State<ReviewAllBaseView> createState() => _ReviewAllBaseViewState();
}

class _ReviewAllBaseViewState extends State<ReviewAllBaseView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ReviewALlCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const ReviewTopView(),
            30.toHGap(),
            const ReviewAllTabs(),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(
                    top: 30.h,
                    left: 30.w,
                  ),
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    return const ReviewDetailCard();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
