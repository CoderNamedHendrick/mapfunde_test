import 'package:flutter/material.dart';
import 'package:mapfunde_test/components/app_back_button.dart';
import 'package:mapfunde_test/components/candidate_section.dart';
import 'package:mapfunde_test/components/custom_chip.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';
import 'package:mapfunde_test/view_widgets/option_chips.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryWhite,
              child: Image.asset('assets/company_icons/paypal.png'),
            ),
            SizedBox(width: SizeConfig.width(13)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Patient Care Advocate',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Full-Time',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(12),
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.width(14),
          ),
          child: Column(
            children: [
              const OptionChips(),
              SizedBox(height: SizeConfig.height(26)),
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
                    Text(
                      'Interviews',
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(14),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.height(25),
              ),
              CandidateSection(
                date: '10 Jan 2021',
                candidates: [
                  CandidateTile(
                    avatar: Image.asset('assets/avatars/avatar2.png'),
                    name: 'Dontae Little',
                    title: 'Financial Advisor',
                  ),
                  CandidateTile(
                    avatar: Image.asset('assets/avatars/avatar3.png'),
                    name: 'Deepa Bardhan',
                    title: 'Sales Manager',
                    isStarred: true,
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.height(24)),
              CandidateSection(
                date: '12 Jan 2021',
                candidates: [
                  CandidateTile(
                    avatar: Image.asset('assets/avatars/avatar4.png'),
                    name: 'Lia Castro',
                    title: 'Marketing Manager',
                  ),
                  CandidateTile(
                    avatar: Image.asset('assets/avatars/avatar5.png'),
                    name: 'Grigoriy Kozhukh',
                    title: 'Computer Analyst',
                  ),
                  CandidateTile(
                    avatar: Image.asset('assets/avatars/avatar6.png'),
                    name: 'Nout Goistein',
                    title: 'Support Specialist',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
