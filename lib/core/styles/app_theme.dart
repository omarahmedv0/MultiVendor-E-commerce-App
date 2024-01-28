import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/shared/app_constants.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      
      fontFamily: AppConstants.fontFamily,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    );
  }
}
