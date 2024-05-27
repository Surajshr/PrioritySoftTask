import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/modes/shoes_model.dart';
import 'package:priority_soft_task/core/router/app_route.dart';
import 'package:priority_soft_task/features/detail/logic/detail_cubit.dart';
import 'package:priority_soft_task/features/detail/view/widgets/add_to_card_bottom_sheet.dart';
import 'package:priority_soft_task/features/detail/view/widgets/add_to_card_contents.dart';
import 'package:priority_soft_task/features/detail/view/widgets/detail_rating_text.dart';
import 'package:priority_soft_task/features/detail/view/widgets/detail_view_shoes_card.dart';
import 'package:priority_soft_task/features/detail/view/widgets/detail_view_top_section.dart';
import 'package:priority_soft_task/features/detail/view/widgets/review_detail_card.dart';
import 'package:priority_soft_task/features/detail/view/widgets/shoes_size_builder.dart';

class DetailBaseView extends StatefulWidget {
  const DetailBaseView({
    super.key,
    required this.selectedShoesData,
  });

  final ShoesModel selectedShoesData;

  @override
  State<DetailBaseView> createState() => _DetailBaseViewState();
}

class _DetailBaseViewState extends State<DetailBaseView> {
  @override
  void initState() {
    BlocProvider.of<DetailCubit>(context).onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedData = widget.selectedShoesData;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddToCardContents(
        onTap: () {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            context: context,
            builder: (final BuildContext context) => AddToCardBottomSheetItems(
              selectedShoesData: selectedData,
            ),
          );
        },
        buttonText: 'ADD TO CART',
        amountText: 'Price',
        amount: '\$${selectedData.price}',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.w,
          vertical: 40.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailViewTopSection(
              onBackTap: () {
                Navigator.pop(context);
              },
              onBagTap: () {
                router.pushNamed(AppRoute.cart.name);
              },
            ),
            30.toHGap(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailViewShoesCard(
                      shoesUrl: selectedData.image ?? '',
                    ),
                    30.toHGap(),
                    Text(
                      selectedData.title ?? '',
                      style: AppTextStyle.headline600,
                    ),
                    12.toHGap(),
                    DetailRatingText(
                      rating: double.parse(
                              selectedData.rating?.toString() ?? '0') ??
                          0,
                      totalReview: selectedData.totalReview ?? '',
                    ),
                    32.toHGap(),
                    Text(
                      'Size',
                      style: AppTextStyle.headline400,
                    ),
                    10.toHGap(),
                    ShoesSizeBuilder(
                      sizes: selectedData.sizes ?? [],
                    ),
                    30.toHGap(),
                    Text(
                      'Description',
                      style: AppTextStyle.headline400,
                    ),
                    10.toHGap(),
                    Text(
                      selectedData.description ?? '',
                      style: AppTextStyle.bodyText200.copyWith(
                        color: AppColor.primaryNeutral400,
                      ),
                    ),
                    30.toHGap(),
                    Text(
                      'Review (${selectedData.totalReview})',
                      style: AppTextStyle.headline400,
                    ),
                    10.toHGap(),
                    ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (
                          context,
                          index,
                        ) {
                          return ReviewDetailCard(
                            review: selectedData.review?[index],
                          );
                        }),
                    AppOutlineButton(
                      width: 1.sw,
                      buttonText: 'SEE ALL REVIEW',
                      isLoading: false,
                      onTap: () {
                        router.pushNamed(
                          extra: selectedData.review,
                          AppRoute.reviewAll.name,
                        );
                      },
                    ),
                    100.toHGap(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
