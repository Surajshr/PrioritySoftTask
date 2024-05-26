import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/locator/locator.dart';
import 'package:priority_soft_task/firebase_options.dart';

class StartUpService {
  static Future<void> init() async {
    final WidgetsBinding widgetsBinding =
        WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(
      widgetsBinding: widgetsBinding,
    );
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
    await setUpLocator();
  }
}
