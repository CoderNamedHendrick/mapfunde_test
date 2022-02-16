import 'package:flutter/material.dart';
import 'package:mapfunde_test/home.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        primaryColor: AppColors.primaryGreen,
      ),
      navigatorKey: AppNavigator.key,
      home: const AppHome(),
    );
  }
}
