import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';
import 'dart:math' as math;
import '../components/basic_analytics_bar.dart';

class AnalyticsHighlightsOne extends StatelessWidget {
  const AnalyticsHighlightsOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BasicAnalyticsBar(
            icon: const Icon(Icons.wallet_travel),
            title: Text(
              '19.345',
              style: Theme.of(context).textTheme.headline6,
            ),
            bottomTile: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Views',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(14),
                    color: const Color(0xff8083A3),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '+10%',
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(14),
                        color: AppColors.primaryGreenTwo,
                      ),
                    ),
                    Transform.rotate(
                      angle: -math.pi / 4,
                      child: const Icon(
                        Icons.arrow_forward,
                        color: AppColors.primaryGreenTwo,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: SizeConfig.width(14)),
          BasicAnalyticsBar(
            icon: const Icon(Icons.people),
            title: Text(
              '3.820',
              style: Theme.of(context).textTheme.headline6,
            ),
            bottomTile: Row(
              children: [
                Text(
                  'Applicants',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(14),
                    color: const Color(0xff8083A3),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
