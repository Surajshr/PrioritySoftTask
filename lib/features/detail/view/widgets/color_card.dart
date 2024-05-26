import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/detail/logic/detail_cubit.dart';
import 'package:priority_soft_task/features/detail/view/widgets/color_circle.dart';

class ColorCard extends StatelessWidget {
  const ColorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 10.w,
        bottom: 10.h,
      ),
      child: Container(
        // width: 200.w,
        height: 45.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 10.w,
            top: 10.h,
            bottom: 10.h,
          ),
          child: BlocBuilder<DetailCubit, DetailState>(
            builder: (BuildContext context, state) {
              final bloc = context.read<DetailCubit>();
              return Row(
                children: [
                  ColorCircle(
                    borderColor:
                    AppColor.primaryNeutral200,
                    fillColor: Colors.white,
                    isActive:
                    state.selectedColorIndex == 0,
                    onTap: () {
                      bloc.onColorSelected(0);
                    },
                  ),
                  ColorCircle(
                    borderColor:
                    AppColor.primaryNeutral500,
                    fillColor:
                    AppColor.primaryNeutral500,
                    isActive:
                    state.selectedColorIndex == 1,
                    onTap: () {
                      bloc.onColorSelected(1);
                    },
                  ),
                  ColorCircle(
                    borderColor: AppColor.green,
                    fillColor: AppColor.green,
                    isActive:
                    state.selectedColorIndex == 2,
                    onTap: () {
                      bloc.onColorSelected(2);
                    },
                  ),
                  ColorCircle(
                    borderColor:
                    AppColor.primaryInformation,
                    fillColor:
                    AppColor.primaryInformation,
                    isActive:
                    state.selectedColorIndex == 3,
                    onTap: () {
                      bloc.onColorSelected(3);
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}