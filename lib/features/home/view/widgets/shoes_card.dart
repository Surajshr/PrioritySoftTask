import 'package:priority_soft_task/common/ui.dart';

class ShoesCard extends StatelessWidget {
  const ShoesCard({
    super.key,
    required this.shoesImage,
    required this.shoesIndex,
  });

  final String shoesImage;
  final String shoesIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      decoration: BoxDecoration(
        color: AppColor.container.withOpacity(.5),
        borderRadius: BorderRadius.circular(
          20.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 22.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              Assets.jordanIcon,
              // height: 20.w,
              // width: 20.w,
            ),
            4.toHGap(),
            Expanded(
              child: Hero(
                tag: shoesIndex,
                child: Image.asset(
                  // height: 85.h,
                  // width: 120.w,
                  shoesImage,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
