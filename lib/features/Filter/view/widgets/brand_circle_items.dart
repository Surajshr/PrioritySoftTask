import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/detail/view/widgets/color_circle.dart';

class BrandCircularItems extends StatelessWidget {
  const BrandCircularItems({
    super.key,
    required this.onTap,
    required this.brandIcon,
    required this.brandName,
    required this.totalItems,
    required this.isActive,
  });

  final VoidCallback onTap;
  final String brandIcon;
  final String brandName;
  final String totalItems;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 60.h,
                width: 55.w,
              ),
              Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: AppColor.primaryNeutral100,
                  borderRadius: BorderRadius.circular(
                    180.r,
                  ),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    brandIcon,
                    color: Colors.black,
                  ),
                ),
              ),
              isActive
                  ? Positioned(
                top: 32.h,
                left: 30.w,
                child: ColorCircle(
                  borderColor: AppColor.primaryNeutral500,
                  fillColor: AppColor.primaryNeutral500,
                  isActive: true,
                  onTap: () {
                    // bloc.onColorSelected(2);
                  },
                ),
              )
                  : 0.toHGap(),
            ],
          ),
          Text(
            brandName,
            style: AppTextStyle.headline300.copyWith(
              color: AppColor.primaryNeutral500,
            ),
          ),
          4.toHGap(),
          Text(
            '$totalItems Items',
            style: AppTextStyle.bodyText10.copyWith(
              color: AppColor.primaryNeutral300,
            ),
          )
        ],
      ),
    );
  }
}

