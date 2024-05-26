import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/extensions/num_extension.dart';

class ReviewText extends StatelessWidget {
  const ReviewText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.starSVG,
        ),
        6.toWGap(),
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

