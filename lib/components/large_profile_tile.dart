import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class LargeProfileTile extends StatelessWidget {
  const LargeProfileTile({
    Key? key,
    required this.avatar,
    required this.name,
    required this.companyName,
    required this.roleTitle,
  }) : super(key: key);
  final Widget avatar;
  final String name;
  final String companyName;
  final String roleTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizeConfig.width(12),
          ),
        ),
        border: Border.all(
          color: AppColors.primaryWhite,
        ),
      ),
      padding: EdgeInsets.all(
        SizeConfig.width(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: SizeConfig.width(31),
            child: avatar,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: SizeConfig.height(19)),
          Text(
            name,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: SizeConfig.height(6)),
          Row(
            children: [
              Text(
                companyName,
                style: TextStyle(
                  fontSize: SizeConfig.textSize(12),
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff8083a3),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Icon(
                  Icons.circle,
                  size: SizeConfig.width(4),
                ),
              ),
              Text(
                roleTitle,
                style: TextStyle(
                  fontSize: SizeConfig.textSize(12),
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff8083a3),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
