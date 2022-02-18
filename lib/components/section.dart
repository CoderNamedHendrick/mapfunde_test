import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class Section extends StatelessWidget {
  const Section({
    Key? key,
    this.withTitle = false,
    this.title,
    this.withBorders = true,
    required this.sectionBody,
    this.paddingWidth = 24,
  })  : assert(!withTitle || title != null),
        super(key: key);
  final bool withTitle;
  final bool withBorders;
  final Widget? title;
  final Widget sectionBody;
  final double paddingWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: withBorders
          ? BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  SizeConfig.width(16),
                ),
              ),
              border: Border.all(
                width: 1,
                color: const Color(0xffe4e6e8).withOpacity(0.6),
              ),
            )
          : null,
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.height(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (withTitle)
            Padding(
              padding: EdgeInsets.only(
                bottom: SizeConfig.height(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.width(paddingWidth),
                      bottom: SizeConfig.height(23),
                    ),
                    child: title,
                  ),
                  if (withBorders)
                    Divider(
                      color: const Color(0xffe4e6e8).withOpacity(0.6),
                    ),
                ],
              ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.width(paddingWidth),
            ),
            child: sectionBody,
          ),
        ],
      ),
    );
  }
}
