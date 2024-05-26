import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/router/app_route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    dPrint('you are not belong here.');
    Future.delayed(const Duration(seconds: 2), () {
      dPrint('you are here.');
      router.pushReplacementNamed(AppRoute.home.name);
    });
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.container,
      body: SizedBox(
        height: 1.sh,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.splashLogo,
                height: 60.h,
                width: 60.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
