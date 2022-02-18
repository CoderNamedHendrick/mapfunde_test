import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class ManagerTile extends StatelessWidget {
  const ManagerTile({
    Key? key,
    required this.avatar,
    required this.name,
    required this.companyName,
    required this.roleType,
    required this.companyIcon,
  }) : super(key: key);
  final Widget avatar;
  final String name;
  final Widget companyIcon;
  final String companyName;
  final String roleType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.height(16),
        horizontal: SizeConfig.width(20),
      ),
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.height(2),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizeConfig.width(16),
          ),
        ),
        border: Border.all(
          color: const Color(0xffe4e6d8).withOpacity(0.6),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: avatar,
          ),
          SizedBox(width: SizeConfig.width(20)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(16),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: SizeConfig.height(2)),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: SizeConfig.width(15),
                      width: SizeConfig.width(15),
                      child: companyIcon,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: SizedBox(),
                    ),
                    Text(
                      companyName,
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(12),
                        fontWeight: FontWeight.w500,
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
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
