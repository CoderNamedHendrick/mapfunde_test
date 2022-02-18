import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class ToolBarContentAfterSearch extends StatelessWidget {
  const ToolBarContentAfterSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.width(14),
        vertical: SizeConfig.height(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.notifications_none_rounded,
              color: Colors.black,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset('assets/avatars/avatar10.png'),
          ),
        ],
      ),
    );
  }
}
