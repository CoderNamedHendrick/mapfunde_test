import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class CandidateSection extends StatelessWidget {
  const CandidateSection({
    Key? key,
    required this.date,
    this.candidates,
  }) : super(key: key);
  final String date;
  final List<CandidateTile>? candidates;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig.height(7),
            horizontal: SizeConfig.width(22),
          ),
          decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            borderRadius: BorderRadius.all(
              Radius.circular(
                SizeConfig.width(18),
              ),
            ),
          ),
          child: Text(
            date,
            style: TextStyle(
              fontSize: SizeConfig.textSize(12),
              fontWeight: FontWeight.w700,
              color: const Color(0xff8083a3),
            ),
          ),
        ),
        SizedBox(height: SizeConfig.height(10)),
        ...?candidates,
      ],
    );
  }
}

class CandidateTile extends StatefulWidget {
  const CandidateTile({
    Key? key,
    required this.avatar,
    required this.name,
    required this.title,
    this.isStarred = false,
  }) : super(key: key);
  final Widget avatar;
  final String name;
  final String title;
  final bool isStarred;

  @override
  State<CandidateTile> createState() => _CandidateTileState();
}

class _CandidateTileState extends State<CandidateTile> {
  late bool _isStarred;

  @override
  void initState() {
    super.initState();
    _isStarred = widget.isStarred;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isStarred = !_isStarred;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.primaryWhite,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              SizeConfig.width(12),
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.height(18),
          horizontal: SizeConfig.width(13),
        ),
        margin: EdgeInsets.symmetric(vertical: SizeConfig.height(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _isStarred
                    ? const Icon(
                        Icons.star,
                        color: Colors.black,
                      )
                    : const Icon(
                        Icons.star_outline_rounded,
                        color: Colors.black,
                      ),
                const SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: widget.avatar,
                ),
                SizedBox(width: SizeConfig.width(12)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: SizeConfig.textSize(12),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.textSize(12),
                          color: const Color(0xff8083a3)),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
