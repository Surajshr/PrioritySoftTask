import 'package:priority_soft_task/common/ui.dart';

class CircularSizeContainer extends StatelessWidget {
  const CircularSizeContainer({
    super.key,
    required this.sizeNumber,
    required this.onTap,
    required this.isActive,
  });

  final String sizeNumber;
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
            180.r,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(
            11.w,
          ),
          child: Center(
            child: Text(
              sizeNumber,
              style: AppTextStyle.headline300.copyWith(
                color: isActive ? Colors.white : AppColor.primaryNeutral400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}