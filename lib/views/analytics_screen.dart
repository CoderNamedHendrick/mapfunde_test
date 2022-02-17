import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mapfunde_test/components/animated_toggle.dart';
import 'package:mapfunde_test/components/app_back_button.dart';
import 'package:mapfunde_test/components/job_tile.dart';
import 'package:mapfunde_test/components/section.dart';
import 'package:mapfunde_test/components/tag.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';
import 'package:mapfunde_test/view_widgets/analytics_highlights_one.dart';
import 'package:mapfunde_test/view_widgets/breakdown_section.dart';
import 'package:mapfunde_test/view_widgets/performance_section.dart';
import 'package:mapfunde_test/view_widgets/profile_section.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.width(14),
          ),
          child: Column(
            children: [
              const AnalyticsHighlightsOne(),
              SizedBox(height: SizeConfig.height(24)),
              const PerformanceSection(),
              SizedBox(height: SizeConfig.height(24)),
              const BreakdownSection(),
              SizedBox(height: SizeConfig.height(24)),
              const ProfileSection(),
            ],
          ),
        ),
      ),
    );
  }
}
