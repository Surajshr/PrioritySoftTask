import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/Filter/logic/filter_cubit.dart';
import 'package:priority_soft_task/features/Filter/view/filter_base_view.dart';
import 'package:priority_soft_task/features/Filter/view/widgets/brand_circle_items.dart';

class BrandListBuilder extends StatelessWidget {
  const BrandListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (BuildContext context, FilterState state) {
        return SizedBox(
          height:100.h ,
          child: ListView.builder(
            shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: brandItems.length,
              itemBuilder: (context, index) {
                final filterBloc = context.read<FilterCubit>();
                return Padding(
                  padding: EdgeInsets.only(
                    right: 25.w,
                  ),
                  child: BrandCircularItems(
                    onTap: () {
                      filterBloc.onBrandSelect(index);
                    },
                    brandIcon: brandItems[index].brandIcon,
                    brandName: brandItems[index].brandName,
                    totalItems: brandItems[index].totalItems,
                    isActive: state.selectedBrandIndex == index,
                  ),
                );
              }),
        );
      },
    );
  }
}

