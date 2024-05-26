import 'package:priority_soft_task/common/ui.dart';

class FilterBottomContent extends StatelessWidget {
  const FilterBottomContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xffD7D7D7).withOpacity(0.8),
            spreadRadius: 10,
            blurRadius: 30,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AppOutlineButton(
                buttonText: 'RESET()',
                isLoading: false,
                onTap: () {},
              ),
            ),
            15.toWGap(),
            Expanded(
              child: AppButton(
                buttonText: 'APPLY',
                isLoading: false,
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
