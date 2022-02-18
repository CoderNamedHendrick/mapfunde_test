import 'package:flutter/material.dart';
import 'package:mapfunde_test/components/large_profile_tile.dart';
import 'package:mapfunde_test/components/section.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      paddingWidth: 14,
      withTitle: true,
      withBorders: false,
      title: Text(
        'Recommended for you',
        style: TextStyle(
            fontSize: SizeConfig.width(14), color: const Color(0xff8083a3)),
      ),
      sectionBody: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            LargeProfileTile(
              avatar: Image.asset('assets/avatars/manager7.png'),
              name: 'Tamas Bunce',
              companyName: 'Dribble Inc.',
              roleTitle: 'Construction Manager',
            ),
            SizedBox(width: SizeConfig.width(14)),
            LargeProfileTile(
              avatar: Image.asset(
                'assets/avatars/manager1.png',
                fit: BoxFit.fitHeight,
              ),
              name: 'Benedik Safiyulin',
              companyName: 'Google Inc.',
              roleTitle: 'Sales manager',
            ),
          ],
        ),
      ),
    );
  }
}
