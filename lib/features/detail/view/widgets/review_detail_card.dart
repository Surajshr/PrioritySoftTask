import 'package:priority_soft_task/common/ui.dart';

class ReviewDetailCard extends StatelessWidget {
  const ReviewDetailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 30.h,
      ),
      child: SizedBox(
        width: 1.sw,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.w,
              width: 40.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  360.r,
                ),
                child: Image.asset(
                  Assets.person,
                ),
              ),
            ),
            15.toWGap(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: .65.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nolan Carder',
                        style: AppTextStyle.headline300.copyWith(
                          color: AppColor.primaryNeutral500,
                        ),
                      ),
                      Align(
                        child: Text(
                          'Today',
                          style: AppTextStyle.bodyText100.copyWith(
                            color: AppColor.primaryNeutral300,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                5.toHGap(),
                Row(
                  children: [
                    for (int i = 0; i <= 4; i++)
                      Padding(
                        padding: EdgeInsets.only(
                          right: 5.w,
                        ),
                        child: SvgPicture.asset(
                          Assets.starSVG,
                        ),
                      ),
                  ],
                ),
                10.toHGap(),
                SizedBox(
                  width: .6.sw,
                  child: Text(
                    'Perfect for keeping your feet dry and warm in damp conditions. ',
                    style: AppTextStyle.bodyText100.copyWith(
                      color: AppColor.primaryNeutral500,
                    ),
                    overflow: TextOverflow.visible,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}