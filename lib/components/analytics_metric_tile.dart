import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';
import 'dart:math' as math;

class AnalyticsMetricTile extends StatelessWidget {
  const AnalyticsMetricTile(
      {Key? key,
      required this.title,
      this.isPositive = false,
      required this.metric,
      required this.subtitle,
      this.percentageChange = 0})
      : super(key: key);
  final String title;
  final bool isPositive;
  final double metric;
  final String subtitle;
  final int percentageChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width(268),
      height: SizeConfig.height(110),
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
        vertical: SizeConfig.height(15),
      ),
      margin: EdgeInsets.only(
        right: SizeConfig.width(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: const Color(0xff8083a3),
                  fontSize: SizeConfig.textSize(14),
                ),
              ),
              Transform.rotate(
                angle: isPositive ? -math.pi / 4 : math.pi / 4,
                child: Icon(
                  Icons.arrow_forward,
                  size: SizeConfig.width(16),
                  color:
                      isPositive ? AppColors.primaryGreenTwo : Colors.redAccent,
                ),
              ),
            ],
          ),
          Text(
            metric.toString(),
            style: Theme.of(context).textTheme.headline5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subtitle,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: SizeConfig.textSize(15),
                ),
              ),
              Text(
                '${isPositive ? '+' : '-'}${percentageChange.toString()}%',
                style: TextStyle(
                  color:
                      isPositive ? AppColors.primaryGreenTwo : Colors.redAccent,
                  fontWeight: FontWeight.w700,
                  fontSize: SizeConfig.textSize(12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
