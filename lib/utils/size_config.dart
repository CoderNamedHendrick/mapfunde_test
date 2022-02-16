import 'package:flutter/material.dart';

class SizeConfig {
  static BuildContext? appContext;
  static MediaQueryData? _mediaQueryData;
  static const double _designHeight = 844.0;
  static const double _designWidth = 390.0;
  static const double _textWidthRatio = 390.0;
  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    appContext = context;
  }

  static void ensureInitialized() {
    if (appContext == null || _mediaQueryData == null) {
      appContext = AppNavigator.key.currentContext;
      _mediaQueryData = MediaQuery.of(AppNavigator.key.currentContext!);
    }
  }

  static double get designWidth => _designWidth;

  static double height(double height) {
    ensureInitialized();
    final screenHeight = _mediaQueryData!.size.height / _designHeight;
    return height * screenHeight;
  }

  static double width(double width) {
    ensureInitialized();
    final screenWidth = _mediaQueryData!.size.width / _designWidth;
    return width * screenWidth;
  }

  static double textSize(double textSize) {
    ensureInitialized();
    final screenWidth = _mediaQueryData!.size.width / _textWidthRatio;
    return textSize * screenWidth;
  }
}

class AppNavigator {
  AppNavigator._();
  static final key = GlobalKey<NavigatorState>();
  static BuildContext get currentContext => key.currentState!.context;
}
