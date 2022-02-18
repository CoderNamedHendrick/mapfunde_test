import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mapfunde_test/components/animated_toggle.dart';
import 'package:mapfunde_test/components/job_tile.dart';
import 'package:mapfunde_test/components/section.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class LatestJobsSection extends StatelessWidget {
  const LatestJobsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      sectionBody: Column(
        children: [
          AnimatedToggle(
            values: const ['Latest profile', 'Latest jobs'],
            onToggleCallback: (index) {},
            width: SizeConfig.width(312),
            backgroundColor: const Color(0xfff5f5fa),
          ),
          SizedBox(height: SizeConfig.height(38)),
          JobTile(
            companyIcon:
                SvgPicture.asset('assets/company_icons/dribble_logo.svg'),
            roleTitle: 'Crisis Intervention Specialist',
            location: 'London',
            companyName: 'Dribble Inc.',
            roleType: 'Full-Time',
          ),
          JobTile(
            companyIcon:
                SvgPicture.asset('assets/company_icons/google_logo.svg'),
            roleTitle: 'Virtual Scheduler-Remote',
            location: 'New York',
            companyName: 'Google Inc.',
            roleType: 'Remote',
          ),
          JobTile(
            companyIcon: SvgPicture.asset('assets/company_icons/fb.svg'),
            roleTitle: 'Patient Care Advocate',
            location: 'Washington',
            companyName: 'Facebook',
            roleType: 'Full-Time',
          ),
          MaterialButton(
            onPressed: () {},
            color: AppColors.primaryWhite,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(SizeConfig.width(23)),
              ),
            ),
            height: SizeConfig.height(46),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.circle,
                      size: SizeConfig.width(4),
                    ),
                    const SizedBox(width: 2),
                    Icon(
                      Icons.circle,
                      size: SizeConfig.width(4),
                    ),
                    const SizedBox(width: 2),
                    Icon(
                      Icons.circle,
                      size: SizeConfig.width(4),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                Text(
                  'See all jobs',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(14),
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
