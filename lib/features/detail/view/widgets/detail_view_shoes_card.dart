import 'package:cached_network_image/cached_network_image.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/detail/view/widgets/color_card.dart';

class DetailViewShoesCard extends StatelessWidget {
  const DetailViewShoesCard({
    super.key,
    required this.shoesUrl,
  });

  final String shoesUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330.h,
      width: 1.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.r,
        ),
        color: AppColor.container,
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            bottom: 40.h,
            child: Hero(
              tag: '2',
              child: CachedNetworkImage(
                fit: BoxFit.contain,
                imageUrl: shoesUrl,
                height: 250.w,
                width: 250.w,
                placeholder: (context, url) => const Padding(
                  padding: EdgeInsets.all(30.0),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25.w,
                width: 150.w,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    bottom: 20.h,
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      return Container(
                        width: 6.w,
                        height: 6.w,
                        margin: const EdgeInsets.only(left: 4.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            180.r,
                          ),
                          color: AppColor.primaryNeutral500,
                        ),
                      );
                    },
                    shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              const ColorCard()
            ],
          ),
        ],
      ),
    );
  }
}
