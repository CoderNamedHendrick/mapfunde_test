import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class BasicAnalyticsBar extends StatelessWidget {
  const BasicAnalyticsBar({
    Key? key,
    required this.icon,
    required this.title,
    required this.bottomTile,
  }) : super(key: key);
  final Widget icon;
  final Widget title;
  final Widget bottomTile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width(268),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizeConfig.width(12),
          ),
        ),
        border: Border.all(
          width: 1,
          color: const Color(0xffe4e6e8).withOpacity(0.6),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.width(24),
        vertical: SizeConfig.height(25),
      ),
      child: Row(
        children: [
          Container(
            height: SizeConfig.height(48),
            width: SizeConfig.height(48),
            decoration: const BoxDecoration(
              color: AppColors.primaryWhite,
              shape: BoxShape.circle,
            ),
            child: icon,
          ),
          SizedBox(width: SizeConfig.width(18)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title,
                bottomTile,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
