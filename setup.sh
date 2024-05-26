echo "flutter pub get"
flutter pub get

echo "for creating android release build"
flutter run --flavor development -t lib/main_development.dart --release


echo "flutter pub run build_runner build"
flutter pub run build_runner build  --delete-conflicting-outputs


echo "flutter packages pub run build_runner build"
flutter packages pub run build_runner build

echo "flutter packages pub run build_runner build watch"
dart run build_runner watch --delete-conflicting-outputs

echo "flutter build apk --no-shrink"
flutter build apk --no-shrink

echo "flutter pub add"
flutter pub add

echo "Flavor"

echo "dev debug"
flutter run --flavor dev

flutter clean && flutter pub get

echo "uat debug"
flutter run --flavor uat

echo "uat release"
flutter run --flavor uat --release

echo "qa debug"
flutter run --flavor qa

echo "qa release"
flutter run --flavor qa --release
echo "live debug"
flutter run --flavor live

echo "live release"
flutter run --flavor live --release

echo "dev release"
flutter build apk --flavor development -t lib/main_development.dart --release


