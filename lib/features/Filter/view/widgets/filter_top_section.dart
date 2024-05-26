import 'package:priority_soft_task/common/ui.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key, required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 30.w,
        top: 40.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            title,
            style: AppTextStyle.headline400,
          ),
          20.toWGap(),
        ],
      ),
    );
  }
}
