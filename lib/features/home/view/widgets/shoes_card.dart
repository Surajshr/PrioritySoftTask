import 'package:cached_network_image/cached_network_image.dart';
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
    dPrint('providedImageURL:$shoesImage');
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
                child: CachedNetworkImage(
                  imageUrl: shoesImage,
                  placeholder: (context, url) => const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  errorWidget: (context, url, error) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.w,
                    ),
                    child: const Icon(Icons.error),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
