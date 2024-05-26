import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/detail/view/widgets/color_card.dart';

class DetailViewShoesCard extends StatelessWidget {
  const DetailViewShoesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330.h,
      width: 1.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.r,
        ),
        color: AppColor.container,
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Hero(
            tag: '2',
            child: Image.asset(
              height: 300.h,
              width: 300.h,
              Assets.jordan,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25.0,
                width: 100.0,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    bottom: 20.h,
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemBuilder: (
                        context,
                        index,
                        ) {
                      return Container(
                        width: 6.w,
                        height: 6.w,
                        margin: const EdgeInsets.only(left: 4.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            180.r,
                          ),
                          color: AppColor.primaryNeutral500,
                        ),
                      );
                    },
                    shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              const ColorCard()
            ],
          ),
        ],
      ),
    );
  }
}