import 'package:priority_soft_task/common/ui.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.text,
          borderRadius: BorderRadius.circular(100.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 22.w,
            vertical: 11.5.h,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(Assets.settingSvg),
              16.toWGap(),
              Text(
                'FILTER',
                style: AppTextStyle.headline300.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
