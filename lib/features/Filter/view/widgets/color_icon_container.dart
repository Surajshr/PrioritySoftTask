import 'package:priority_soft_task/common/ui.dart';

class ColorContainer extends StatelessWidget {
  const ColorContainer({
    super.key,
    required this.text,
    required this.onTap,
    required this.isActive,
    required this.circleColor,
  });

  final String text;
  final VoidCallback onTap;
  final bool isActive;
  final Color circleColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          // color: isActive ? AppColor.primaryNeutral500 : Colors.white,
          border: Border.all(
            color: isActive
                ? AppColor.primaryNeutral500
                : AppColor.primaryNeutral200,
          ),
          borderRadius: BorderRadius.circular(
            100.r,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 11.h,
            horizontal: 20.w,
          ),
          child: Center(
            child: Row(
              children: [
                Container(
                  height: 20.h,
                  width: 20.h,
                  decoration: BoxDecoration(
                    color: circleColor,
                    borderRadius: BorderRadius.circular(
                      180.r,
                    ),
                    border: Border.all(
                      color: AppColor.primaryNeutral200,
                    )
                  ),
                ),
                10.toWGap(),
                Text(
                  text,
                  style: AppTextStyle.headline300.copyWith(
                    color: AppColor.primaryNeutral500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
