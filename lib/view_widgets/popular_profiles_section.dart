import 'package:flutter/material.dart';
import 'package:mapfunde_test/components/profile_tile.dart';
import 'package:mapfunde_test/components/section.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class PopularProfilesSection extends StatelessWidget {
  const PopularProfilesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      withTitle: true,
      title: Text(
        'Popular profile',
        style: Theme.of(context).textTheme.headline6,
      ),
      sectionBody: Column(
        children: [
          ProfileTile(
            avatar: Image.asset('assets/avatars/avatar7.png'),
            name: 'Elise Beverley',
            percentageMatch: 90.4,
          ),
          ProfileTile(
            avatar: Image.asset('assets/avatars/avatar8.png'),
            name: 'Olivia Eklund',
            percentageMatch: 70.2,
            matchColor: AppColors.primaryYellow,
          ),
          ProfileTile(
            avatar: Image.asset('assets/avatars/avatar9.png'),
            name: 'Tiontay Carroll',
            percentageMatch: 51.5,
            matchColor: AppColors.primaryOrange,
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
                const Icon(Icons.people_outlined),
                const SizedBox(width: 8),
                Text(
                  'Explore more profiles',
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
