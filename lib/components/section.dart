import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class Section extends StatelessWidget {
  const Section({
    Key? key,
    this.withTitle = false,
    this.title,
    required this.sectionBody,
  })  : assert(!withTitle || title != null),
        super(key: key);
  final bool withTitle;
  final Widget? title;
  final Widget sectionBody;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizeConfig.width(16),
          ),
        ),
        border: Border.all(
          width: 1,
          color: const Color(0xffe4e6e8).withOpacity(0.6),
        ),
      ),
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
                      left: SizeConfig.width(24),
                      bottom: SizeConfig.height(23),
                    ),
                    child: title,
                  ),
                  Divider(
                    color: const Color(0xffe4e6e8).withOpacity(0.6),
                  ),
                ],
              ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.width(24),
            ),
            child: sectionBody,
          ),
        ],
      ),
    );
  }
}
