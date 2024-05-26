import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:priority_soft_task/core/router/app_route.dart';
import 'package:priority_soft_task/core/services/start_up_service.dart';
import 'package:priority_soft_task/features/detail/logic/detail_cubit.dart';
import 'package:priority_soft_task/features/home/logic/home_cubit.dart';
import 'package:priority_soft_task/features/home/view/home_base_view.dart';

import '../../common/ui.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    await StartUpService.init();
    runApp(
      const MyApp(),
    );
  }, (final error, final stack) {
    dPrint('Error Detected $error');
    FirebaseCrashlytics.instance.recordError(
      error,
      stack,
    );
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => HomeCubit(),
            ),
            BlocProvider(
              create: (context) => DetailCubit(),
            ),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            routerDelegate: router.routerDelegate,
            routeInformationParser: router.routeInformationParser,
            routeInformationProvider: router.routeInformationProvider,
            builder: (final context, final child) {
              return child ?? const Text('');
            },
          ),
        );
      },
      child: const HomeBaseView(),
    );
  }
}
