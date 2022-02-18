import 'package:flutter/material.dart';
import 'package:mapfunde_test/views/analytics_screen.dart';
import 'package:mapfunde_test/views/inbox.dart';
import 'package:mapfunde_test/views/main.dart';
import 'package:mapfunde_test/views/mic_screen.dart';
import 'package:mapfunde_test/views/screen_one.dart';

import 'utils/app_colors.dart';
import 'utils/size_config.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int _selectedIndex = 2;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void selectIndex(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return WillPopScope(
      onWillPop: () async {
        if (_selectedIndex != 2) {
          setState(() {
            _selectedIndex = 2;
            _pageController.jumpToPage(_selectedIndex);
          });
          return false;
        }
        return true;
      },
      child: Theme(
        data: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0,
            centerTitle: true,
          ),
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            headline2: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: SizeConfig.textSize(34),
              color: Colors.black,
            ),
            headline3: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: SizeConfig.textSize(28),
              color: Colors.black,
            ),
            headline5: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: SizeConfig.textSize(20),
            ),
            headline6: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: SizeConfig.textSize(18),
            ),
          ),
        ),
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.timelapse_rounded),
                label: 'Time',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.inbox_outlined),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                  icon: SizedBox(
                    height: SizeConfig.height(56),
                    width: SizeConfig.height(56),
                    child: Card(
                      elevation: _selectedIndex == 2 ? 0 : null,
                      color: _selectedIndex == 2
                          ? AppColors.primaryGreenTwo
                          : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.height(28),
                        ),
                      ),
                      child: Icon(
                        Icons.person_search_outlined,
                        color: _selectedIndex == 2 ? Colors.white : null,
                      ),
                    ),
                  ),
                  label: 'jobs'),
              const BottomNavigationBarItem(
                icon: Icon(Icons.mic_none_rounded),
                label: 'mic',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.menu_rounded),
                label: 'menu',
              ),
            ],
            unselectedItemColor: AppColors.primaryBlack,
            selectedItemColor: AppColors.primaryGreenTwo,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            onTap: selectIndex,
          ),
          body: PageView(
            children: const [
              ScreenOne(),
              InboxScreen(),
              MainScreen(),
              MicScreen(),
              AnalyticsScreen(),
            ],
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ),
      ),
    );
  }
}
