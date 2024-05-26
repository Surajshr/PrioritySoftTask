import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/Filter/logic/filter_cubit.dart';
import 'package:priority_soft_task/features/Filter/models/brand_model.dart';
import 'package:priority_soft_task/features/Filter/view/widgets/brand_list_builder.dart';
import 'package:priority_soft_task/features/Filter/view/widgets/color_item_builder.dart';
import 'package:priority_soft_task/features/Filter/view/widgets/custom_item_builder.dart';
import 'package:priority_soft_task/features/Filter/view/widgets/filter_bottom_content.dart';
import 'package:priority_soft_task/features/Filter/view/widgets/filter_top_section.dart';
import 'package:priority_soft_task/features/Filter/view/widgets/price_slider.dart';

import '../models/color_model.dart';

final List<BrandModel> brandItems = [
  BrandModel(
    brandIcon: Assets.jordanIcon,
    brandName: 'Jordan',
    totalItems: '200',
  ),
  BrandModel(
    brandIcon: Assets.nikeIcon,
    brandName: 'NIKE',
    totalItems: '1021',
  ),
  BrandModel(
    brandIcon: Assets.pumaIcon,
    brandName: 'Puma',
    totalItems: '500',
  ),
  BrandModel(
    brandIcon: Assets.rebookIcon,
    brandName: 'Reebok',
    totalItems: '156',
  ),
  BrandModel(
    brandIcon: Assets.vensIcon,
    brandName: 'Vens',
    totalItems: '456',
  ),
];

List<String> sortBy = [
  'Most recent',
  'Lowest price',
  'Highest Review',
];

List<String> gender = [
  'Man',
  'Woman',
  'Unisex',
];
List<ColorModel> colorData = [
  ColorModel(
    colorName: 'Black',
    colorCode: AppColor.primaryNeutral500,
  ),
  ColorModel(
    colorName: 'White',
    colorCode: Colors.white,
  ),
  ColorModel(
    colorName: 'Red',
    colorCode: AppColor.primaryError,
  )
];

class FilterBaseView extends StatefulWidget {
  const FilterBaseView({super.key});

  @override
  State<FilterBaseView> createState() => _FilterBaseViewState();
}

class _FilterBaseViewState extends State<FilterBaseView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FilterCubit(),
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const FilterBottomContent(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 30.w,
          ),
          child: BlocBuilder<FilterCubit, FilterState>(
            builder: (BuildContext context, FilterState state) {
              final detailBloc = context.read<FilterCubit>();

              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopSection(title: 'Filter',),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.toHGap(),
                        Text(
                          'Brand',
                          style: AppTextStyle.headline400,
                        ),
                        20.toHGap(),
                        const BrandListBuilder(),
                        30.toHGap(),
                        Text(
                          'Price Range',
                          style: AppTextStyle.headline400,
                        ),
                        45.toHGap(),
                        const PriceSlider(),
                        35.toHGap(),
                        Text(
                          'Sort By',
                          style: AppTextStyle.headline400,
                        ),
                        20.toHGap(),
                        CustomItemBuilder(
                          builderItems: sortBy,
                          onItemClick: (index) {
                            detailBloc.onFilterBySelected(index);
                          },
                          selectedIndex: state.selectedFilterByIndex,
                        ),
                        30.toHGap(),
                        Text(
                          'Gender',
                          style: AppTextStyle.headline400,
                        ),
                        20.toHGap(),
                        CustomItemBuilder(
                          builderItems: gender,
                          onItemClick: (index) {
                            detailBloc.onGenderSelected(index);
                          },
                          selectedIndex: state.selectedGenderIndex,
                        ),
                        30.toHGap(),
                        Text(
                          'Color',
                          style: AppTextStyle.headline400,
                        ),
                        20.toHGap(),
                        ColorItemBuilder(
                          builderItems: colorData,
                          onItemClick: (index) {
                            detailBloc.onColorItemSelected(index);
                          },
                          selectedIndex: state.selectedColorIndex,
                        ),
                        100.toHGap(),
                      ],
                    ),
                  ))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
