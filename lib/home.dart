import 'package:flutter/material.dart';

import 'utils/app_colors.dart';
import 'utils/size_config.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int _selectedIndex = 2;

  void selectIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
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
                  color: _selectedIndex == 2 ? AppColors.primaryGreen : null,
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
        selectedItemColor: AppColors.primaryGreen,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: selectIndex,
      ),
    );
  }
}
