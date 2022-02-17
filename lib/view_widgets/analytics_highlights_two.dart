import 'package:flutter/material.dart';
import 'package:mapfunde_test/components/analytics_metric_tile.dart';

class AnalyticsHighlightsTwo extends StatelessWidget {
  const AnalyticsHighlightsTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          AnalyticsMetricTile(
            title: 'Performance',
            metric: 4.950,
            subtitle: 'Job Applicants',
            percentageChange: 8,
            isPositive: true,
          ),
          AnalyticsMetricTile(
            title: 'Conversion',
            metric: 148,
            subtitle: 'Meetings scheduled',
            isPositive: true,
            percentageChange: 15,
          )
        ],
      ),
    );
  }
}
