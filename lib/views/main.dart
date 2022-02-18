import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mapfunde_test/components/large_profile_tile.dart';
import 'package:mapfunde_test/components/manager_tile.dart';
import 'package:mapfunde_test/components/section.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';
import 'package:mapfunde_test/view_widgets/after_search.dart';
import 'package:mapfunde_test/view_widgets/recommended_section.dart';
import 'package:mapfunde_test/view_widgets/toolbar_content_after_search.dart';
import 'package:mapfunde_test/view_widgets/toolbar_content_before_search.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const double searchPadding = 81;
  static const double beforeSearchPadding = 367;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late Gradient _beforeSearch;
  late Gradient _afterSearch;

  bool _searchComplete = false;

  @override
  void initState() {
    super.initState();
    _beforeSearch = const LinearGradient(
      begin: Alignment(-1, -1),
      end: Alignment(1, 1),
      stops: [0.1, 0.4, 1],
      tileMode: TileMode.mirror,
      colors: [
        AppColors.primaryGreenTwo,
        AppColors.primaryYellow,
        AppColors.primaryOrange,
      ],
    );

    _afterSearch = const LinearGradient(
      begin: Alignment(-1, -1),
      end: Alignment(1, 1),
      stops: [0.3, 1],
      tileMode: TileMode.mirror,
      colors: [
        AppColors.primaryYellow,
        AppColors.primaryOrange,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 870),
              height: SizeConfig.height(452),
              decoration: BoxDecoration(
                gradient: _searchComplete ? _afterSearch : _beforeSearch,
                // gradient:
              ),
              child: SafeArea(
                child: _searchComplete
                    ? const ToolBarContentAfterSearch()
                    : const ToolBarContentBeforeSearch(),
              ),
            ),
            SafeArea(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 870),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                      SizeConfig.width(22),
                    ),
                  ),
                ),
                margin: EdgeInsets.only(
                  top: SizeConfig.height(_searchComplete
                      ? MainScreen.searchPadding
                      : MainScreen.beforeSearchPadding),
                ),
                padding: EdgeInsets.only(
                  right: SizeConfig.width(14),
                  left: SizeConfig.width(14),
                  top: SizeConfig.height(22),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        elevation: 2.5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              SizeConfig.width(22),
                            ),
                          ),
                        ),
                        child: SizedBox(
                          height: SizeConfig.height(44),
                          child: TextFormField(
                            onFieldSubmitted: (value) {
                              if (value.length > 3) {
                                setState(() {
                                  _searchComplete = true;
                                });
                              } else {
                                setState(() {
                                  _searchComplete = false;
                                });
                              }
                            },
                            style: TextStyle(
                              fontSize: SizeConfig.textSize(12),
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              // isDense: true,
                              hintText: 'Job title, keyword or company',
                              hintStyle: TextStyle(
                                fontSize: SizeConfig.textSize(12),
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff8083a3),
                              ),

                              prefixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(width: 8),
                                  CircleAvatar(
                                    backgroundColor: _searchComplete
                                        ? AppColors.primaryGreenTwo
                                        : AppColors.primaryWhite,
                                    maxRadius: SizeConfig.width(15),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                      size: SizeConfig.width(16),
                                    ),
                                  ),
                                ],
                              ),
                              suffixIcon: _searchComplete
                                  ? Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:
                                              AppColors.primaryWhite,
                                          maxRadius: SizeConfig.width(15),
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.black,
                                            size: SizeConfig.width(16),
                                          ),
                                        ),
                                      ],
                                    )
                                  : null,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    SizeConfig.width(22),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: SizeConfig.height(23)),
                      _searchComplete
                          ? const AfterSearch()
                          : const RecommendedSection(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
