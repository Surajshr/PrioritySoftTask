import 'package:cached_network_image/cached_network_image.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/modes/shoes_model.dart';

class ReviewDetailCard extends StatelessWidget {
  const ReviewDetailCard({
    super.key,
    required this.review,
  });

  final Review? review;

  @override
  Widget build(BuildContext context) {
    final int rating = double.parse(review?.rate ?? '0.0').floor();
    return Padding(
      padding: EdgeInsets.only(
        bottom: 30.h,
      ),
      child: SizedBox(
        width: 1.sw,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.w,
              width: 40.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  360.r,
                ),
                child: CachedNetworkImage(
                  imageUrl: review?.image ?? '',
                  placeholder: (context, url) => const Padding(
                    padding: EdgeInsets.all(0.0),
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

                // Image.asset(AS
                //   Assets.person,
                // ),
              ),
            ),
            15.toWGap(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: .65.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        review?.name ?? '',
                        style: AppTextStyle.headline300.copyWith(
                          color: AppColor.primaryNeutral500,
                        ),
                      ),
                      Align(
                        child: Text(
                          'Today',
                          style: AppTextStyle.bodyText100.copyWith(
                            color: AppColor.primaryNeutral300,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                5.toHGap(),
                Row(
                  children: [
                    for (int i = 0; i <= rating; i++)
                      Padding(
                        padding: EdgeInsets.only(
                          right: 5.w,
                        ),
                        child: SvgPicture.asset(
                          Assets.starSVG,
                        ),
                      ),
                  ],
                ),
                10.toHGap(),
                SizedBox(
                  width: .6.sw,
                  child: Text(
                    review?.comment ?? '',
                    style: AppTextStyle.bodyText100.copyWith(
                      color: AppColor.primaryNeutral500,
                    ),
                    overflow: TextOverflow.visible,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
