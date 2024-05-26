import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/Filter/logic/filter_cubit.dart';
import 'package:priority_soft_task/features/Filter/view/widgets/text_container.dart';

class CustomItemBuilder extends StatelessWidget {
  const CustomItemBuilder({
    super.key,
    required this.builderItems, required this.onItemClick, required this.selectedIndex,
  });

  final List<String> builderItems;
  final Function(int) onItemClick;
  final int selectedIndex;


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (BuildContext context, state) {
        return SizedBox(
          width: 1.sw,
          height: 40.w,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: builderItems.length,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: TextContainer(
                  text: builderItems[index],
                  onTap: () {
                    onItemClick(index);
                  },
                  isActive: selectedIndex == index,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
