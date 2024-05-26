import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/detail/logic/detail_cubit.dart';

import 'circular_size_container.dart';

class ShoesSizeBuilder extends StatelessWidget {
  const ShoesSizeBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailCubit, DetailState>(
      builder: (BuildContext context, state) {
        final detailBloc = context.read<DetailCubit>();
        return SizedBox(
          width: 1.sw,
          height: 40.w,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: AppStrings.shoesSizeNumber.length,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircularSizeContainer(
                  sizeNumber: AppStrings.shoesSizeNumber[index],
                  onTap: () {
                    detailBloc.onShoesSizeSelected(index);
                  },
                  isActive: state.sizeActiveIndex == index,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
