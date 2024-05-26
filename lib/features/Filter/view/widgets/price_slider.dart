import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/Filter/logic/filter_cubit.dart';

class PriceSlider extends StatelessWidget {
  const PriceSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (BuildContext context, FilterState state) {
        final filterBloc = context.read<FilterCubit>();
        return SizedBox(
            width: 1.sw,
            height: 50.0,
            child: FlutterSlider(
              trackBar: const FlutterSliderTrackBar(
                activeTrackBarDraggable: false,
                activeTrackBar: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              jump: true,
              values: [
                state.sliderLowerValue,
                state.sliderUpperValue,
              ],
              rangeSlider: true,
              max: 1000,
              min: 0,
              step: FlutterSliderStep(
                  step: 10,
                  isPercentRange: false,
                  rangeList: [
                    FlutterSliderRangeStep(
                      from: 0,
                      to: 1000,
                      step: 10,
                    )
                  ]),
              tooltip: FlutterSliderTooltip(
                  alwaysShowTooltip: true,
                  positionOffset: FlutterSliderTooltipPositionOffset(
                    top: 40.h,
                  ),
                  direction: FlutterSliderTooltipDirection.top,
                  textStyle: AppTextStyle.headline400,
                  custom: (value) {
                    return Text(
                      '\$$value',
                      style: AppTextStyle.headline200,
                    );
                  }),
              handler: FlutterSliderHandler(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      180.r,
                    ),
                  ),
                  child: Container(
                    height: 15.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          180.r,
                        )),
                  )),
              rightHandler: FlutterSliderHandler(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      180.r,
                    ),
                  ),
                  child: Container(
                    height: 15.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          180.r,
                        )),
                  )),
              onDragging: (
                  handlerIndex,
                  low,
                  up,
                  ) {
                filterBloc.onSliderDrag(
                  low,
                  up,
                );
              },
            ));
      },
    );
  }
}