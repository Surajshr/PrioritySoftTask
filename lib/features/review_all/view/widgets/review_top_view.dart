import 'package:priority_soft_task/common/ui.dart';

class ReviewTopView extends StatelessWidget {
  const ReviewTopView({super.key, s});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 30.w,
        top: 40.h,
        left: 30.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              Assets.backArrow,
            ),
          ),
          Text(
            'Review',
            style: AppTextStyle.headline400,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(
                Assets.starSVG,
                width: 16.w,
                height: 16.w,
              ),
              4.toWGap(),
              Text(
                '4.5',
                style: AppTextStyle.headline300.copyWith(
                  color: AppColor.primaryNeutral500,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
