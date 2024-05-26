import 'package:priority_soft_task/common/ui.dart';

class DetailViewTopSection extends StatelessWidget {
  const DetailViewTopSection({
    super.key,
    required this.onBackTap,
    required this.onBagTap,
  });

  final VoidCallback onBackTap;
  final VoidCallback onBagTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onBackTap,
          child: SvgPicture.asset(
            Assets.backArrow,
          ),
        ),
        GestureDetector(
          onTap: onBagTap,
          child: SvgPicture.asset(
            Assets.emptyBag,
          ),
        ),
      ],
    );
  }
}
