import 'package:go_router/go_router.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/features/Cart/view/carts_base_view.dart';
import 'package:priority_soft_task/features/Filter/view/filter_base_view.dart';
import 'package:priority_soft_task/features/detail/view/detail_base_view.dart';
import 'package:priority_soft_task/features/home/view/home_base_view.dart';
import 'package:priority_soft_task/features/order_summary/view/order_summary_base_view.dart';
import 'package:priority_soft_task/features/review_all/view/review_all_base_view.dart';
import 'package:priority_soft_task/features/splash/splash_screen.dart';

enum AppRoute {
  splash,
  home,
  detail,
  filter,
  reviewAll,
  cart,
  orderSummary,
}

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(
            path: 'home',
            name: AppRoute.home.name,
            builder: (
              BuildContext context,
              GoRouterState state,
            ) {
              return const HomeBaseView();
            },
            routes: [
              GoRoute(
                path: 'detail',
                name: AppRoute.detail.name,
                builder: (
                  BuildContext context,
                  GoRouterState state,
                ) {
                  return const DetailBaseView();
                },
                routes: [
                  GoRoute(
                    path: 'reviewAll',
                    name: AppRoute.reviewAll.name,
                    builder: (
                      BuildContext context,
                      GoRouterState state,
                    ) {
                      return const ReviewAllBaseView();
                    },
                  ),
                  GoRoute(
                      path: 'cart',
                      name: AppRoute.cart.name,
                      builder: (
                        BuildContext context,
                        GoRouterState state,
                      ) {
                        return const CartBaseView();
                      },
                      routes: [
                        GoRoute(
                          path: 'orderSummary',
                          name: AppRoute.orderSummary.name,
                          builder: (
                            BuildContext context,
                            GoRouterState state,
                          ) {
                            return const OrderSummary();
                          },
                        ),
                      ]),
                ],
              ),
              GoRoute(
                path: 'filter',
                name: AppRoute.filter.name,
                builder: (
                  BuildContext context,
                  GoRouterState state,
                ) {
                  return const FilterBaseView();
                },
              ),
            ]),
      ],
    ),
  ],
);
