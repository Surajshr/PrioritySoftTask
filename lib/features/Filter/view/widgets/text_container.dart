import 'package:priority_soft_task/common/ui.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
    required this.text,
    required this.onTap,
    required this.isActive,
  });

  final String text;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? AppColor.primaryNeutral500 : Colors.white,
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
            child: Text(
              text,
              style: AppTextStyle.headline300.copyWith(
                color: isActive ? Colors.white : AppColor.primaryNeutral500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
