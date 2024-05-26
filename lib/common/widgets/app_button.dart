import 'package:priority_soft_task/common/ui.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.buttonText,
    required this.isLoading,
    required this.onTap,
  });

  final String buttonText;
  final bool isLoading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        padding: EdgeInsets.symmetric(
          horizontal: 30.w,
          vertical: 16.h,
        ),
        decoration: BoxDecoration(
          color: AppColor.primaryNeutral500,
          borderRadius: BorderRadius.circular(
            100.r,
          ),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : Text(
                  buttonText,
                  style: AppTextStyle.headline300.copyWith(
                    color: Colors.white,
                  ),
                ),
        ),
      ),
    );
  }
}

class AppOutlineButton extends StatelessWidget {
  const AppOutlineButton({
    super.key,
    required this.buttonText,
    required this.isLoading,
    required this.onTap,
    this.width,
  });

  final String buttonText;
  final bool isLoading;
  final VoidCallback onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 16.h,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.primaryNeutral500,
          ),
          borderRadius: BorderRadius.circular(
            100.r,
          ),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : Text(
                  buttonText,
                  style: AppTextStyle.headline300.copyWith(
                    color: AppColor.primaryNeutral500,
                  ),
                ),
        ),
      ),
    );
  }
}
