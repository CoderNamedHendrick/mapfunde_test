import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mapfunde_test/components/manager_tile.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class AfterSearch extends StatelessWidget {
  const AfterSearch({Key? key}) : super(key: key);

  static final managerSearchList = [
    ManagerTile(
      avatar: Image.asset('assets/avatars/manager1.png'),
      name: 'Ahmad Nazeri',
      companyName: 'Google Inc.',
      roleType: 'Sales manager',
      companyIcon: SvgPicture.asset('assets/company_icons/google_logo.svg'),
    ),
    ManagerTile(
      avatar: Image.asset('assets/avatars/manager2.png'),
      name: 'Jumaima Al Nour',
      companyName: 'Emory University',
      roleType: 'Business manager',
      companyIcon: SvgPicture.asset('assets/company_icons/apple_logo.svg'),
    ),
    ManagerTile(
      avatar: Image.asset('assets/avatars/manager3.png'),
      name: 'Xian Zhou',
      companyName: 'Shake Shack',
      roleType: 'Marketing manager',
      companyIcon: SvgPicture.asset('assets/company_icons/dropbox_logo.svg'),
    ),
    ManagerTile(
      avatar: Image.asset('assets/avatars/manager4.png'),
      name: 'Lacara Jones',
      companyName: 'Core Group Resources',
      roleType: 'Sales manager',
      companyIcon: SvgPicture.asset('assets/company_icons/sketch_logo.svg'),
    ),
    ManagerTile(
      avatar: Image.asset('assets/avatars/manager5.png'),
      name: 'Thitiwat Shimma',
      companyName: 'Catchafire Company',
      roleType: 'Data Analyst',
      companyIcon: SvgPicture.asset('assets/company_icons/slack_logo.svg'),
    ),
    ManagerTile(
      avatar: Image.asset('assets/avatars/manager6.png'),
      name: 'Njimoluh Ebua',
      companyName: 'Printpack',
      roleType: 'Budget Analyst',
      companyIcon: SvgPicture.asset('assets/company_icons/spotify.svg'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              FilterChip(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.height(9),
                  horizontal: SizeConfig.width(18),
                ),
                label: Row(
                  children: [
                    Text(
                      'Date Posted',
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(12),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                backgroundColor: Colors.white,
                side: BorderSide(
                  color: const Color(0xffe4e6e8).withOpacity(0.6),
                ),
                onSelected: (value) {},
              ),
              const SizedBox(width: 8),
              FilterChip(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.height(9),
                  horizontal: SizeConfig.width(18),
                ),
                label: Row(
                  children: [
                    Text(
                      'Experience',
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(12),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                backgroundColor: Colors.white,
                side: BorderSide(
                  color: const Color(0xffe4e6e8).withOpacity(0.6),
                ),
                onSelected: (value) {},
              ),
              const SizedBox(width: 8),
              FilterChip(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.height(9),
                  horizontal: SizeConfig.width(18),
                ),
                label: Row(
                  children: [
                    Text(
                      'Company',
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(12),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                backgroundColor: Colors.white,
                side: BorderSide(
                  color: const Color(0xffe4e6e8).withOpacity(0.6),
                ),
                onSelected: (value) {},
              ),
            ],
          ),
        ),
        SizedBox(height: SizeConfig.height(18)),
        ...managerSearchList,
      ],
    );
  }
}
