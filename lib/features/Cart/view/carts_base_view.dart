import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/router/app_route.dart';
import 'package:priority_soft_task/features/Cart/logic/cart_cubit.dart';
import 'package:priority_soft_task/features/Filter/view/widgets/filter_top_section.dart';
import 'package:priority_soft_task/features/detail/view/widgets/add_to_card_contents.dart';

class CartBaseView extends StatefulWidget {
  const CartBaseView({super.key});

  @override
  State<CartBaseView> createState() => _CartBaseViewState();
}

class _CartBaseViewState extends State<CartBaseView> {
  @override
  void initState() {
    BlocProvider.of<CartCubit>(context).fetchDataFromAddedCard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddToCardContents(
        onTap: () {
          router.pushNamed(AppRoute.orderSummary.name);
        },
        buttonText: 'CHECK OUT',
        amountText: 'Grand Price',
        amount: '\$750',
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: const TopSection(
              title: 'Cart',
            ),
          ),
          30.toHGap(),
          const CartItems(),
        ],
      ),
    );
  }
}

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (BuildContext context, CartState state) {
        final cartCubit = context.read<CartCubit>();
        return SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.addedToCardItems.isNotEmpty
                  ? ListView.builder(
                      itemCount: state.addedToCardItems.length,
                      padding: EdgeInsets.only(
                        bottom: 200.h,
                      ),
                      itemBuilder: (context, index) {
                        final cardItem = state.addedToCardItems[index];
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 30.w,
                            bottom: 30.h,
                          ),
                          child: Slidable(
                            key: const ValueKey(0),
                            endActionPane: ActionPane(
                              extentRatio: 0.20,
                              motion: const ScrollMotion(),
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 88.h,
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                      color: AppColor.primaryError,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          20.r,
                                        ),
                                        bottomLeft: Radius.circular(
                                          20.r,
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(25.h),
                                      child: SvgPicture.asset(
                                        Assets.trash,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            child: SizedBox(
                              width: 1.sw,
                              child: Row(
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 88.h,
                                    width: 88.h,
                                    decoration: BoxDecoration(
                                      color: AppColor.primaryNeutral500
                                          .withOpacity(
                                        .05,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        20.r,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                        12.w,
                                      ),
                                      child: CachedNetworkImage(
                                        imageUrl: cardItem.image ?? '',
                                        placeholder: (context, url) =>
                                            const Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 50.w,
                                          ),
                                          child: const Icon(Icons.error),
                                        ),
                                      ),
                                    ),
                                  ),
                                  15.toWGap(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cardItem.title ?? '',
                                        style: AppTextStyle.headline400,
                                      ),
                                      5.toHGap(),
                                      Text(
                                        '${cardItem.brand} . Red Grey . ${cardItem.size}',
                                        style:
                                            AppTextStyle.bodyText100.copyWith(
                                          color: AppColor.secondaryDarkGrey,
                                        ),
                                      ),
                                      10.toHGap(),
                                      SizedBox(
                                        width: .6.sw,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '\$${cardItem.price}',
                                              style: AppTextStyle.headline300
                                                  .copyWith(
                                                color:
                                                    AppColor.primaryNeutral400,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    cartCubit.onSubtractClick(
                                                        cardItem.quantity ?? 0);
                                                  },
                                                  child: SvgPicture.asset(
                                                    Assets.minusCircle,
                                                    color: AppColor
                                                        .primaryNeutral500,
                                                  ),
                                                ),
                                                12.toWGap(),
                                                Text(
                                                  '${state.itemCount}',
                                                  style: AppTextStyle
                                                      .headline300
                                                      .copyWith(
                                                    color: AppColor
                                                        .primaryNeutral500,
                                                  ),
                                                ),
                                                12.toWGap(),
                                                GestureDetector(
                                                  onTap: () {
                                                    cartCubit.onAddClick(
                                                        state.itemCount);
                                                  },
                                                  child: SvgPicture.asset(
                                                    Assets.plusCircle,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })
                  : Center(
                      child: Image.asset(
                        Assets.emptyIcon,
                        height: 200.w,
                        width: 200.w,
                      ),
                    ),
        );
      },
    );
  }
}
