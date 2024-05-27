import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/locator/locator.dart';
import 'package:priority_soft_task/core/router/app_route.dart';
import 'package:priority_soft_task/core/services/firebase_service.dart';
import 'package:priority_soft_task/features/home/logic/home_cubit.dart';
import 'package:priority_soft_task/features/home/view/widgets/filter_button.dart';
import 'package:priority_soft_task/features/home/view/widgets/home_tab_view.dart';
import 'package:priority_soft_task/features/home/view/widgets/home_top_section.dart';
import 'package:priority_soft_task/features/home/view/widgets/shoes_gradient_view.dart';

class HomeBaseView extends StatefulWidget {
  const HomeBaseView({super.key});

  @override
  State<HomeBaseView> createState() => _HomeBaseViewState();
}

class _HomeBaseViewState extends State<HomeBaseView> {
  @override
  void initState() {
    BlocProvider.of<HomeCubit>(context).getShoesData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FilterButton(
          onTap: () {
            router.pushNamed(
              AppRoute.filter.name,
            );
          },
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // AppButton(
            //     buttonText: 'buttonText',
            //     isLoading: false,
            //     onTap: () {
            //       final firebaseService = locator<FirebaseService>();
            //       firebaseService.addDocument();
            //     }),
            const HomeTopSection(),
            24.toHGap(),
            const HomeTabView(),
            // 30.toHGap(),
            const Expanded(
              child: ShoesGradientView(),
            ),
          ],
        ));
  }
}
