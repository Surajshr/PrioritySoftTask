import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/router/app_route.dart';

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 35.h,
        left: 30.w,
        right: 30.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Discover',
            style: AppTextStyle.headline700,
          ),
          GestureDetector(
            onTap: () {
              router.pushNamed(AppRoute.cart.name);
            },
            child: SvgPicture.asset(
              Assets.cartSvg,
            ),
          ),
        ],
      ),
    );
  }
}
