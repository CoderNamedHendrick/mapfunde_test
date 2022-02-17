import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mapfunde_test/components/animated_toggle.dart';
import 'package:mapfunde_test/components/app_back_button.dart';
import 'package:mapfunde_test/components/job_tile.dart';
import 'package:mapfunde_test/components/analytics_metric_tile.dart';
import 'package:mapfunde_test/components/profile_tile.dart';
import 'package:mapfunde_test/components/section.dart';
import 'package:mapfunde_test/components/tag.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';
import 'package:mapfunde_test/view_widgets/analytics_highlights_one.dart';
import 'package:mapfunde_test/view_widgets/analytics_highlights_two.dart';
import 'package:mapfunde_test/view_widgets/breakdown_section.dart';
import 'package:mapfunde_test/view_widgets/performance_section.dart';
import 'package:mapfunde_test/view_widgets/popular_profiles_section.dart';
import 'package:mapfunde_test/view_widgets/profile_section.dart';
import 'package:mapfunde_test/view_widgets/trending_countries_section.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: Text(
          'Analytics',
          style: Theme.of(context).textTheme.headline5,
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset(
              'assets/avatars/avatar1.png',
            ),
          )
        ],
      ),
      body: PageView(
        children: const [
          AnalyticsPageOne(),
          AnalyticsPageTwo(),
        ],
      ),
    );
  }
}

class AnalyticsPageOne extends StatelessWidget {
  const AnalyticsPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.width(14),
          right: SizeConfig.width(14),
          top: SizeConfig.height(14),
        ),
        child: Column(
          children: [
            const AnalyticsHighlightsOne(),
            SizedBox(height: SizeConfig.height(24)),
            const PerformanceSection(),
            SizedBox(height: SizeConfig.height(24)),
            const BreakdownSection(),
            SizedBox(height: SizeConfig.height(24)),
            const LatestJobsSection(),
          ],
        ),
      ),
    );
  }
}

class AnalyticsPageTwo extends StatelessWidget {
  const AnalyticsPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(
          SizeConfig.width(14),
        ),
        child: Column(
          children: [
            const AnalyticsHighlightsTwo(),
            SizedBox(height: SizeConfig.height(24)),
            const TrendingCountriesSection(),
            SizedBox(height: SizeConfig.height(24)),
            const PopularProfilesSection(),
          ],
        ),
      ),
    );
  }
}
