
import 'package:priority_soft_task/common/ui.dart';

class DetailRatingText extends StatelessWidget {
  const DetailRatingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Text(
          '4.5',
          style: AppTextStyle.headline300.copyWith(
            color: AppColor.text,
          ),
        ),
        6.toWGap(),
        Text(
          '(1045 Reviews)',
          style: AppTextStyle.bodyText10.copyWith(
            color: AppColor.primaryNeutral300,
          ),
        )
      ],
    );
  }
}
