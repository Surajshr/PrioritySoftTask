import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/detail/view/widgets/add_to_card_items.dart';

import 'add_to_card_bottom_sheet.dart';

class AddToCardContents extends StatelessWidget {
  const AddToCardContents({
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
        child: AddToCardItems(
          onTap: onTap,
          buttonText: buttonText,
          amountText: amountText,
          amount: amount,
        ),
      ),
    );
  }
}
