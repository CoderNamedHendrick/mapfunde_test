import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

import '../components/job_metric.dart';
import '../components/section.dart';

class BreakdownSection extends StatelessWidget {
  const BreakdownSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      withTitle: true,
      title: Text(
        'Breakdown',
        style: Theme.of(context).textTheme.headline6,
      ),
      sectionBody: Column(
        children: [
          Center(
            child: SizedBox(
              height: SizeConfig.height(177),
              width: SizeConfig.height(177),
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 1 / 1,
                    child: CircularProgressIndicator(
                      color: AppColors.primaryYellow,
                      value: 1,
                      strokeWidth: SizeConfig.width(4),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: SizeConfig.height(148.61),
                      width: SizeConfig.height(148.61),
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: CircularProgressIndicator(
                          color: AppColors.primaryOrange,
                          value: 1,
                          strokeWidth: SizeConfig.width(4),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: SizeConfig.height(119.47),
                      width: SizeConfig.height(119.47),
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: CircularProgressIndicator(
                          color: AppColors.primaryGreenTwo,
                          value: 1,
                          strokeWidth: SizeConfig.width(4),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '136',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Total Jobs',
                          style: TextStyle(
                            fontSize: SizeConfig.textSize(12),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: SizeConfig.height(21)),
          const JobMetric(
            status: JobStatus.completed,
            metricCount: 46,
          ),
          const Divider(
            color: Color(0xffe4e6e8),
          ),
          const JobMetric(
            status: JobStatus.pending,
            metricCount: 56,
          ),
          const Divider(
            color: Color(0xffe4e6e8),
          ),
          const JobMetric(
            status: JobStatus.cancelled,
            metricCount: 34,
          ),
        ],
      ),
    );
  }
}
