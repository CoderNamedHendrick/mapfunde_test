import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mapfunde_test/components/section.dart';
import 'package:mapfunde_test/components/tag.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class PerformanceSection extends StatefulWidget {
  const PerformanceSection({Key? key}) : super(key: key);

  @override
  State<PerformanceSection> createState() => _PerformanceSectionState();
}

class _PerformanceSectionState extends State<PerformanceSection> {
  late List<BarChartGroupData> barGroups;

  @override
  void initState() {
    super.initState();
    barGroups = [
      makeGroupData(0, 17, 14),
      makeGroupData(1, 14, 15),
      makeGroupData(2, 20, 12),
      makeGroupData(3, 20, 12),
      makeGroupData(4, 13, 13),
      makeGroupData(5, 10, 7),
      makeGroupData(6, 14, 15),
      makeGroupData(7, 20, 12),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Section(
      withTitle: true,
      title: Text(
        'Listing performance',
        style: Theme.of(context).textTheme.headline6,
      ),
      sectionBody: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: AppColors.primaryWhite,
                child: Icon(
                  Icons.bar_chart,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: SizeConfig.width(20)),
              Tag(
                tagColor: AppColors.primaryGreen,
                tagName: Text(
                  'Views',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(14),
                  ),
                ),
              ),
              SizedBox(width: SizeConfig.width(20)),
              Tag(
                tagColor: const Color(0xffffbd00),
                tagName: Text(
                  'Applications',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(14),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.height(32)),
          SizedBox(
            height: SizeConfig.height(180),
            child: BarChart(
              BarChartData(
                barGroups: barGroups,
                titlesData: titlesData,
                barTouchData: BarTouchData(
                  allowTouchBarBackDraw: true,
                  touchTooltipData: BarTouchTooltipData(
                    tooltipBgColor: Colors.white,
                    getTooltipItem:
                        (BarChartGroupData a, int b, BarChartRodData c, int d) {
                      var day = getDay(a);
                      return BarTooltipItem(
                        '${a.x == 0 || a.x == 1 ? 'February' : 'March'} '
                        '$day',
                        TextStyle(
                          fontSize: SizeConfig.textSize(14),
                          color: const Color(0xff8083a3),
                        ),
                        children: [
                          TextSpan(
                            text: '\n${c.y.toString()} '
                                '${c.colors.contains(AppColors.primaryGreenTwo) ? 'Views' : 'Applications'}',
                            style: TextStyle(
                              fontSize: SizeConfig.textSize(14),
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  touchCallback: (event, response) {},
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                maxY: 20,
                gridData: FlGridData(
                  show: false,
                ),
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.height(23),
            ),
            child: Row(
              children: [
                Text(
                  'February',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(14),
                    color: const Color(0xff8083a3),
                  ),
                ),
                const SizedBox(width: 23),
                Text(
                  'March',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(14),
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  String getDay(BarChartGroupData a) {
    switch (a.x.toInt()) {
      case 0:
        return '27';
      case 1:
        return '28';
      case 2:
        return '1';
      case 3:
        return '2';
      case 4:
        return '3';
      case 5:
        return '4';
      case 6:
        return '5';
      case 7:
        return '7';
      default:
        return '';
    }
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) {
            switch (value.toInt()) {
              case 0:
                return TextStyle(
                  fontSize: SizeConfig.textSize(14),
                  color: const Color(0xff8083a3),
                );
              case 1:
                return TextStyle(
                  fontSize: SizeConfig.textSize(14),
                  color: const Color(0xff8083a3),
                );
              default:
                return TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.textSize(14),
                );
            }
          },
          margin: 20,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return '27';
              case 1:
                return '28';
              case 2:
                return '1';
              case 3:
                return '2';
              case 4:
                return '3';
              case 5:
                return '4';
              case 6:
                return '5';
              case 7:
                return '7';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        rightTitles: SideTitles(showTitles: false),
      );

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
          y: y1,
          colors: [AppColors.primaryGreenTwo],
          width: SizeConfig.width(4),
        ),
        BarChartRodData(
          y: y2,
          colors: [AppColors.primaryYellow],
          width: SizeConfig.width(4),
        ),
      ],
      showingTooltipIndicators: [],
    );
  }
}
