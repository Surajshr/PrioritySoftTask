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
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CartCubit(),
      child: Scaffold(
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
        return Padding(
          padding: EdgeInsets.only(left: 30.w),
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
                      color: AppColor.primaryNeutral500.withOpacity(
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
                      child: Image.asset(
                        Assets.jordan,
                      ),
                    ),
                  ),
                  15.toWGap(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jordan 1 Retro High Tie Dye',
                        style: AppTextStyle.headline400,
                      ),
                      5.toHGap(),
                      Text(
                        'Nike . Red Grey . 40',
                        style: AppTextStyle.bodyText100.copyWith(
                          color: AppColor.secondaryDarkGrey,
                        ),
                      ),
                      10.toHGap(),
                      SizedBox(
                        width: .6.sw,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$230.00',
                              style: AppTextStyle.headline300.copyWith(
                                color: AppColor.primaryNeutral400,
                              ),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    cartCubit.onSubtractClick(state.itemCount);
                                  },
                                  child: SvgPicture.asset(
                                    Assets.minusCircle,
                                    color: AppColor.primaryNeutral500,
                                  ),
                                ),
                                12.toWGap(),
                                Text(
                                  '${state.itemCount}',
                                  style: AppTextStyle.headline300.copyWith(
                                    color: AppColor.primaryNeutral500,
                                  ),
                                ),
                                12.toWGap(),
                                GestureDetector(
                                  onTap: () {
                                    cartCubit.onAddClick(state.itemCount);
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
      },
    );
  }
}
