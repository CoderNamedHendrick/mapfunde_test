import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class JobTile extends StatelessWidget {
  const JobTile({
    Key? key,
    required this.companyIcon,
    required this.roleTitle,
    required this.location,
    required this.companyName,
    required this.roleType,
  }) : super(key: key);
  final Widget companyIcon;
  final String roleTitle;
  final String location;
  final String companyName;
  final String roleType;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: AppColors.primaryWhite,
        child: companyIcon,
      ),
      title: Text(
        roleTitle,
        style: TextStyle(
          fontSize: SizeConfig.textSize(16),
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            location,
            style: TextStyle(
              fontSize: SizeConfig.textSize(12),
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
            companyName,
            style: TextStyle(
              fontSize: SizeConfig.textSize(12),
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
            roleType,
            style: TextStyle(
              fontSize: SizeConfig.textSize(12),
              color: const Color(0xff8083a3),
            ),
          ),
        ],
      ),
    );
  }
}
