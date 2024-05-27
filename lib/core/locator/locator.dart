
import 'package:get_it/get_it.dart';
import 'package:priority_soft_task/common/ui.dart';
import 'package:priority_soft_task/core/services/firebase_service.dart';

GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerSingleton(ScreenUtil());
  locator.registerSingleton(FirebaseService());
}
