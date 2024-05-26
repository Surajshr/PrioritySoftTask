
import 'package:priority_soft_task/common/ui.dart';

class ColorCircle extends StatelessWidget {
  const ColorCircle({
    super.key,
    required this.borderColor,
    required this.fillColor,
    required this.isActive, required this.onTap,
  });

  final bool isActive;
  final Color borderColor;
  final Color fillColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isFillColorWhite = fillColor == Colors.white;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 10,
        ),
        child: Container(
          height: 20.w,
          width: 20.w,
          decoration: BoxDecoration(
            color: fillColor,
            borderRadius: BorderRadius.circular(
              360.r,
            ),
            border: Border.all(
              color: borderColor,
            ),
          ),
          child: isActive
              ? Center(
            child: Icon(
              Icons.check,
              color: isFillColorWhite ? Colors.black : Colors.white,
              size: 12.w,
            ),
          )
              : 0.toHGap(),
        ),
      ),
    );
  }
}
