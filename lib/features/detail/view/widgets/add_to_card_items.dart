import 'package:priority_soft_task/common/ui.dart';

class AddToCardItems extends StatelessWidget {
  const AddToCardItems({
    super.key,
    required this.onTap,
    required this.buttonText,
    required this.amountText,
    required this.amount,
  });

  final VoidCallback onTap;
  final String buttonText;
  final String amountText;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              amountText,
              style: AppTextStyle.bodyText100.copyWith(
                color: AppColor.primaryNeutral300,
              ),
            ),
            Text(
              amount,
              style: AppTextStyle.headline600,
            )
          ],
        ),
        AppButton(
          buttonText: buttonText,
          isLoading: false,
          onTap: onTap,
        )
      ],
    );
  }
}
