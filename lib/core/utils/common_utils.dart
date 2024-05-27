import 'package:flutter/foundation.dart';

void dPrint(String message) {
  if (kDebugMode) {
    print('debugPrint: $message');
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}