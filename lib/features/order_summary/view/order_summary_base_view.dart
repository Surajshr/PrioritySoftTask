import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/Filter/view/widgets/filter_top_section.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: const TopSection(
              title: 'Order Summary',
            ),
          ),
        ],
      ),
    );
  }
}
