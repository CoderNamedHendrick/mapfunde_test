import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class ToolBarContentBeforeSearch extends StatelessWidget {
  const ToolBarContentBeforeSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: SizeConfig.height(14)),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: SizeConfig.height(175),
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Align(
                    alignment: const Alignment(-1, 1),
                    child: SizedBox(
                      height: SizeConfig.height(94),
                      // width: SizeConfig.width(94),
                      child: Image.asset(
                        'assets/avatars/avatar11.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.75, -1),
                    child: SizedBox(
                      height: SizeConfig.width(76),
                      width: SizeConfig.width(76),
                      child: Image.asset(
                        'assets/avatars/avatar12.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0, 1),
                    child: SizedBox(
                      height: SizeConfig.width(127),
                      width: SizeConfig.width(127),
                      child: Image.asset(
                        'assets/avatars/main_avatar.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.75, -1),
                    child: SizedBox(
                      height: SizeConfig.width(69),
                      width: SizeConfig.width(69),
                      child: Image.asset(
                        'assets/avatars/avatar5.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(1, 1),
                    child: SizedBox(
                      height: SizeConfig.height(94),
                      // width: SizeConfig.width(94),
                      child: Image.asset('assets/avatars/oval_cut.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Spacer(),
        Text(
          'Search for a new employeee',
          style: Theme.of(context)
              .textTheme
              .headline2
              ?.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: SizeConfig.height(9),
        ),
        Text(
          'Enter your details to proceed further',
          style: TextStyle(
            fontSize: SizeConfig.textSize(14),
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: SizeConfig.height(78),
        ),
      ],
    );
  }
}
