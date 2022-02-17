import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class Tag extends StatelessWidget {
  const Tag({
    Key? key,
    required this.tagColor,
    required this.tagName,
  }) : super(key: key);
  final Color tagColor;
  final Widget tagName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.circle,
          color: tagColor,
          size: SizeConfig.width(12),
        ),
        const SizedBox(width: 8),
        tagName,
      ],
    );
  }
}
