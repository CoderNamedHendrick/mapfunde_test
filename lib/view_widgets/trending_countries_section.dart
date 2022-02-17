import 'package:countries_world_map/world/simple_world/simple_world.dart';
import 'package:flutter/material.dart';
import 'package:mapfunde_test/components/section.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class TrendingCountriesSection extends StatelessWidget {
  const TrendingCountriesSection({Key? key}) : super(key: key);

  static final rowSpacer = TableRow(
    children: [
      SizedBox(height: SizeConfig.height(16)),
      SizedBox(height: SizeConfig.height(16)),
      SizedBox(height: SizeConfig.height(16)),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Section(
      withTitle: true,
      title: Text(
        'Trending countries',
        style: Theme.of(context).textTheme.headline6,
      ),
      sectionBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultTabController(
            length: 5,
            child: SizedBox(
              height: SizeConfig.height(45),
              child: AppBar(
                bottom: TabBar(
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide.none,
                  ),
                  unselectedLabelColor: Color(0xff8083a3),
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontSize: SizeConfig.textSize(14),
                    fontWeight: FontWeight.w700,
                  ),
                  isScrollable: true,
                  tabs: const [
                    Tab(text: 'All Regions'),
                    Tab(text: 'Europe'),
                    Tab(text: 'Asia'),
                    Tab(text: 'Africa'),
                    Tab(text: 'Middle East'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: SizeConfig.height(25)),
            child: InteractiveViewer(
              maxScale: 75,
              child: const SimpleWorldMap(
                defaultCountryColor: AppColors.primaryWhite,
                countryColors: SimpleWorldCountryColors(
                  uS: AppColors.appBlue,
                  mE: AppColors.primaryYellow,
                  bR: AppColors.primaryGreen,
                  rU: AppColors.primaryOrange,
                  aU: AppColors.appPink,
                  eS: Color(0xffb6e540),
                  fR: Color(0xffdf9ab7),
                  dE: AppColors.primaryOrange,
                  zA: AppColors.appPurple,
                  cN: AppColors.primaryYellow,
                  mX: AppColors.primaryYellow,
                ),
              ),
            ),
          ),
          Table(
            columnWidths: const {
              0: FlexColumnWidth(3),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
            },
            border: const TableBorder(
              bottom: BorderSide(color: AppColors.primaryWhite),
            ),
            children: [
              TableRow(
                children: [
                  Text(
                    'Country',
                    style: TextStyle(
                      color: const Color(0xff8083a3),
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.textSize(12),
                    ),
                  ),
                  Text(
                    'CV',
                    style: TextStyle(
                      color: const Color(0xff8083a3),
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.textSize(12),
                    ),
                  ),
                  Text(
                    'Views',
                    style: TextStyle(
                      color: const Color(0xff8083a3),
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.textSize(12),
                    ),
                  ),
                ],
              ),
              rowSpacer,
              TableRow(
                children: [
                  Text(
                    'USA',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                  Text(
                    '1.350',
                    style: TextStyle(
                      color: const Color(0xff8083a3),
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                  Text(
                    '99.5k',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                ],
              ),
              rowSpacer,
              TableRow(
                children: [
                  Text(
                    'Canada',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                  Text(
                    '1.120',
                    style: TextStyle(
                      color: const Color(0xff8083a3),
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                  Text(
                    '84.5k',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                ],
              ),
              rowSpacer,
              TableRow(
                children: [
                  Text(
                    'Germany',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                  Text(
                    '980',
                    style: TextStyle(
                      color: const Color(0xff8083a3),
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                  Text(
                    '80.1k',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                ],
              ),
              rowSpacer,
              TableRow(
                children: [
                  Text(
                    'Australia',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                  Text(
                    '764',
                    style: TextStyle(
                      color: const Color(0xff8083a3),
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                  Text(
                    '72.5k',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                ],
              ),
              rowSpacer,
              TableRow(
                children: [
                  Text(
                    'China',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                  Text(
                    '648',
                    style: TextStyle(
                      color: const Color(0xff8083a3),
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                  Text(
                    '63.7k',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.textSize(14),
                    ),
                  ),
                ],
              ),
              rowSpacer
            ],
          ),
          SizedBox(height: SizeConfig.height(26)),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.bar_chart),
              const SizedBox(width: 8),
              Text(
                'See full report',
                style: TextStyle(
                  fontSize: SizeConfig.textSize(14),
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
