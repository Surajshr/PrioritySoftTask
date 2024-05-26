import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/router/app_route.dart';
import 'package:priority_soft_task/features/detail/view/widgets/add_to_card_bottom_sheet.dart';
import 'package:priority_soft_task/features/detail/view/widgets/add_to_card_contents.dart';
import 'package:priority_soft_task/features/detail/view/widgets/detail_rating_text.dart';
import 'package:priority_soft_task/features/detail/view/widgets/detail_view_shoes_card.dart';
import 'package:priority_soft_task/features/detail/view/widgets/detail_view_top_section.dart';
import 'package:priority_soft_task/features/detail/view/widgets/review_detail_card.dart';
import 'package:priority_soft_task/features/detail/view/widgets/shoes_size_builder.dart';

class DetailBaseView extends StatefulWidget {
  const DetailBaseView({super.key});

  @override
  State<DetailBaseView> createState() => _DetailBaseViewState();
}

class _DetailBaseViewState extends State<DetailBaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddToCardContents(
        onTap: () {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            context: context,
            builder: (final BuildContext context) =>
                const AddToCardBottomSheetItems(),
          );
        },
        buttonText: 'ADD TO CART',
        amountText: 'Price',
        amount: '\$250',
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
                    const DetailViewShoesCard(),
                    30.toHGap(),
                    Text(
                      'Jordan 1 Retro High Tie Dye',
                      style: AppTextStyle.headline600,
                    ),
                    12.toHGap(),
                    const DetailRatingText(),
                    32.toHGap(),
                    Text(
                      'Size',
                      style: AppTextStyle.headline400,
                    ),
                    10.toHGap(),
                    const ShoesSizeBuilder(),
                    30.toHGap(),
                    Text(
                      'Description',
                      style: AppTextStyle.headline400,
                    ),
                    10.toHGap(),
                    Text(
                      'Engineered to crush any movement-based workout, these '
                      'On sneakers enhance the label\'s original Cloud'
                      ' sneaker with cutting edge technologies for a pair. ',
                      style: AppTextStyle.bodyText200.copyWith(
                        color: AppColor.primaryNeutral400,
                      ),
                    ),
                    30.toHGap(),
                    Text(
                      'Review (1045)',
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
                          return const ReviewDetailCard();
                        }),
                    AppOutlineButton(
                      width: 1.sw,
                      buttonText: 'SEE ALL REVIEW',
                      isLoading: false,
                      onTap: () {
                        router.pushNamed(
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
