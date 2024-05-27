import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/home/logic/home_cubit.dart';

class HomeTabView extends StatelessWidget {
  const HomeTabView({
    super.key,
  });

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
        itemCount:  AppStrings.homeTabs.length,
        itemBuilder: (context, index) {
          return BlocSelector<HomeCubit, HomeState, int>(
            selector: (state) => state.selectedIndex,
            builder: (BuildContext context, selectedIndex) {
              final cubit = context.read<HomeCubit>();
              return GestureDetector(
                onTap: () {
                  cubit.onTabSelected(
                    index: index,
                    selectedBrand: AppStrings.homeTabs[index],
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Text(
                    AppStrings.homeTabs[index],
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
