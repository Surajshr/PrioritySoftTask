import 'package:priority_soft_task/common/ui.dart';

class DetailRatingText extends StatelessWidget {
  const DetailRatingText({
    super.key,
    required this.rating,
    required this.totalReview,
  });

  final double rating;
  final String totalReview;

  @override
  Widget build(BuildContext context) {
    final ratingCount = rating.floor();
    dPrint('starShouldBe:$ratingCount');
    return Row(
      children: [
        for (int i = 0; i <= ratingCount; i++)
          Padding(
            padding: EdgeInsets.only(
              right: 5.w,
            ),
            child: SvgPicture.asset(
              Assets.starSVG,
            ),
          ),
        Text(
          '$rating',
          style: AppTextStyle.headline300.copyWith(
            color: AppColor.text,
          ),
        ),
        6.toWGap(),
        Text(
          '($totalReview Reviews)',
          style: AppTextStyle.bodyText10.copyWith(
            color: AppColor.primaryNeutral300,
          ),
        )
      ],
    );
  }
}
