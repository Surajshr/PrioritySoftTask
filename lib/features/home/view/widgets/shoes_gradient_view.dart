import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/router/app_route.dart';
import 'package:priority_soft_task/features/home/logic/home_cubit.dart';
import 'package:priority_soft_task/features/home/view/widgets/review_text.dart';
import 'package:priority_soft_task/features/home/view/widgets/shoes_card.dart';

class ShoesGradientView extends StatelessWidget {
  const ShoesGradientView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (BuildContext context, HomeState state) {
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : state.shoesList.isEmpty
                ? Center(
                    child: Image.asset(
                      Assets.emptyIcon,
                      height: 200.w,
                      width: 200.w,
                    ),
                  )
                : GridView.builder(
                    padding: EdgeInsets.only(
                      left: 30.w,
                      right: 30.w,
                      bottom: 85.h,
                      top: 30.h,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 300.h,
                      crossAxisSpacing: 16.w,
                      mainAxisSpacing: 30.h,
                    ),
                    itemBuilder: (final context, final index) {
                      final shoes = state.shoesList[index];
                      return GestureDetector(
                        onTap: () {
                          router.pushNamed(
                            extra: shoes,
                            AppRoute.detail.name,
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShoesCard(
                              shoesImage: shoes.image ?? '',
                              shoesIndex: index.toString(),
                            ),
                            10.toHGap(),
                            Text(
                              shoes.title ?? '',
                              maxLines: 2,
                              style: AppTextStyle.bodyText100.copyWith(
                                color: AppColor.text,
                              ),
                            ),
                            4.toHGap(),
                            const ReviewText(),
                            4.toHGap(),
                            Text(
                              '\$${shoes.price}',
                              style: AppTextStyle.headline300.copyWith(
                                color: AppColor.text,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: state.shoesList.length,
                  );
      },
    );
  }
}
