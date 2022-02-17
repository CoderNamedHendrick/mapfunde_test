import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
    required this.avatar,
    required this.name,
    this.matchColor = AppColors.primaryGreenTwo,
    this.percentageMatch = 0,
  }) : super(key: key);
  final Widget avatar;
  final String name;
  final double percentageMatch;
  final Color matchColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.height(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: avatar,
          ),
          SizedBox(width: SizeConfig.width(14)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(12),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: SizeConfig.height(2)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Match ${percentageMatch.toString()}%'),
                    SizedBox(
                      width: SizeConfig.width(48),
                      height: SizeConfig.height(4),
                      child: AnimatedLinearProgressIndicator(
                        percentageMatch: percentageMatch,
                        matchColor: matchColor,
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

class AnimatedLinearProgressIndicator extends StatefulWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    this.percentageMatch = 0,
    this.matchColor = AppColors.primaryGreenTwo,
  }) : super(key: key);
  final double percentageMatch;
  final Color matchColor;

  @override
  _AnimatedLinearProgressIndicatorState createState() =>
      _AnimatedLinearProgressIndicatorState();
}

class _AnimatedLinearProgressIndicatorState
    extends State<AnimatedLinearProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _progressAnimation = Tween<double>(begin: 0, end: widget.percentageMatch)
        .animate(_controller);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(SizeConfig.width(3)),
          child: LinearProgressIndicator(
            value: _progressAnimation.value / 100,
            color: widget.matchColor,
            backgroundColor: widget.matchColor.withOpacity(0.15),
          ),
        );
      },
    );
  }
}
