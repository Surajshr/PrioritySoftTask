import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/modes/shoes_model.dart';
import 'package:priority_soft_task/core/router/app_route.dart';
import 'package:priority_soft_task/features/detail/logic/detail_cubit.dart';
import 'package:priority_soft_task/features/detail/view/widgets/add_to_card_items.dart';

class AddToCardBottomSheetItems extends StatelessWidget {
  const AddToCardBottomSheetItems({
    super.key,
    required this.selectedShoesData,
  });

  final ShoesModel selectedShoesData;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailCubit, DetailState>(
      builder: (BuildContext context, DetailState state) {
        final detailBloc = context.read<DetailCubit>();
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 12.h,
                  ),
                  child: SvgPicture.asset(
                    Assets.minusSvg,
                  ),
                ),
              ),
              20.toHGap(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add to cart',
                    style: AppTextStyle.headline600,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      Assets.close,
                      width: 18.w,
                      height: 18.w,
                    ),
                  )
                ],
              ),
              30.toHGap(),
              Text(
                'Quantity',
                style: AppTextStyle.headline300.copyWith(
                  color: AppColor.primaryNeutral500,
                ),
              ),
              Container(
                height: 50,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: AppColor.primaryNeutral500,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 45.h,
                      width: 100.w,
                      child: TextField(
                        style: AppTextStyle.bodyText200,
                        cursorColor: Colors.black,
                        controller: detailBloc.numberController,
                        enabled: true,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          detailBloc.onChangeTextField(value);
                        },
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: '',
                          // labelStyle: context.labelMedium,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 16.w),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            detailBloc
                                .onSubtractClick(state.itemCount.toString());
                          },
                          child: SvgPicture.asset(
                            color: state.isAddClick
                                ? AppColor.primaryNeutral300
                                : Colors.black,
                            Assets.minusCircle,
                          ),
                        ),
                        20.toWGap(),
                        GestureDetector(
                          onTap: () {
                            detailBloc.onAddClick(state.itemCount.toString());
                          },
                          child: SvgPicture.asset(
                            color: state.isAddClick
                                ? Colors.black
                                : AppColor.primaryNeutral300,
                            Assets.plusCircle,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              33.toHGap(),
              AddToCardItems(
                onTap: () {
                  Navigator.pop(context);
                  showModalBottomSheet<void>(
                    isScrollControlled: true,
                    context: context,
                    builder: (final BuildContext context) => SuccessButtomSheet(
                      selectedShoesData: selectedShoesData,
                    ),
                  );
                },
                buttonText: 'ADD TO CART',
                amountText: 'Price',
                amount: '\$250',
              ),
              22.toHGap(),
              SizedBox(
                height: MediaQuery.of(context).viewInsets.bottom,
              )
            ],
          ),
        );
      },
    );
  }
}

class SuccessButtomSheet extends StatelessWidget {
  const SuccessButtomSheet({
    super.key,
    required this.selectedShoesData,
  });

  final ShoesModel selectedShoesData;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailCubit, DetailState>(
      builder: (BuildContext context, state) {
        final detailBloc = context.read<DetailCubit>();
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
            vertical: 30.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                Assets.circularTick,
              ),
              20.toHGap(),
              Text(
                'Added to cart',
                style: AppTextStyle.headline700,
              ),
              5.toHGap(),
              Text(
                '${state.itemCount} item Total',
                style: AppTextStyle.bodyText200.copyWith(
                  color: AppColor.primaryNeutral400,
                ),
              ),
              20.toHGap(),
              Row(
                children: [
                  Expanded(
                    child: AppOutlineButton(
                      buttonText: 'BACK EXPLORE',
                      isLoading: false,
                      onTap: () {
                        Navigator.pop(context);
                        router.pushReplacementNamed(AppRoute.home.name);
                      },
                    ),
                  ),
                  15.toWGap(),
                  Expanded(
                    child: AppButton(
                      buttonText: 'TO CART',
                      isLoading: false,
                      onTap: () {
                        detailBloc.addItemToCard(
                          shoesModel: selectedShoesData,
                          quantity: state.itemCount.toString(),
                          size: state.selectedSize.toString(),
                        );
                        Navigator.pop(context);

                        router.pushNamed(AppRoute.cart.name);
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
