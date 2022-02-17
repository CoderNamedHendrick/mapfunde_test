import 'package:flutter/material.dart';
import 'package:mapfunde_test/components/custom_chip.dart';
import 'package:mapfunde_test/utils/size_config.dart';

enum Options {
  jobCandidates,
  listingDetails,
  schedules,
}

class OptionChips extends StatefulWidget {
  const OptionChips({Key? key}) : super(key: key);

  @override
  _OptionChipsState createState() => _OptionChipsState();
}

class _OptionChipsState extends State<OptionChips> {
  var _groupValue = Options.jobCandidates;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomChip<Options>(
            groupValue: _groupValue,
            chipContent: Row(
              children: [
                const Icon(Icons.people_rounded),
                const SizedBox(width: 4),
                Text(
                  'Job candidates',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(12),
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            value: Options.jobCandidates,
            onChanged: (value) => setState(() {
              if (value != null) {
                _groupValue = value;
              }
            }),
          ),
          const SizedBox(width: 12),
          CustomChip<Options>(
            groupValue: _groupValue,
            chipContent: Row(
              children: [
                const Icon(Icons.info_outline_rounded),
                const SizedBox(width: 4),
                Text(
                  'Listing details',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(12),
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            value: Options.listingDetails,
            onChanged: (value) => setState(() {
              if (value != null) {
                _groupValue = value;
              }
            }),
          ),
          const SizedBox(width: 12),
          CustomChip<Options>(
            groupValue: _groupValue,
            chipContent: Row(
              children: [
                const Icon(Icons.calendar_today_outlined),
                const SizedBox(width: 4),
                Text(
                  'Schedule',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(12),
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            value: Options.schedules,
            onChanged: (value) => setState(() {
              if (value != null) {
                _groupValue = value;
              }
            }),
          ),
        ],
      ),
    );
  }
}
