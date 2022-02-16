import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Navigator.of(context).pop,
      child: Container(
        height: SizeConfig.height(32),
        width: SizeConfig.height(32),
        decoration: const BoxDecoration(
          color: AppColors.primaryWhite,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}
