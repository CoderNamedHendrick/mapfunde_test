import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class AnimatedToggle extends StatefulWidget {
  final List<String> values;
  final ValueChanged onToggleCallback;
  final Color backgroundColor;
  final Color buttonColor;
  final Color textColor;
  final double width;
  final double position;

  const AnimatedToggle({
    Key? key,
    required this.values,
    required this.onToggleCallback,
    required this.width,
    this.backgroundColor = const Color(0xFFe7e7e8),
    this.position = 0,
    this.buttonColor = const Color(0xFFFFFFFF),
    this.textColor = const Color(0xFF000000),
  }) : super(key: key);

  @override
  _AnimatedToggleState createState() => _AnimatedToggleState();
}

class _AnimatedToggleState extends State<AnimatedToggle> {
  late bool initialPosition;

  @override
  void initState() {
    if (widget.position == 0) {
      initialPosition = true;
    } else if (widget.position == 1) {
      initialPosition = false;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: SizeConfig.height(48),
      // margin: const EdgeInsets.all(20),
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              initialPosition = !initialPosition;
              var index = 0;
              if (!initialPosition) {
                index = 1;
              }
              widget.onToggleCallback(index);
              setState(() {});
            },
            child: Container(
              width: widget.width,
              height: SizeConfig.height(48),
              decoration: ShapeDecoration(
                color: widget.backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.width * 0.1),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  widget.values.length,
                  (index) => Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: widget.width * 0.05),
                    child: Text(
                      widget.values[index],
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(14),
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF8083A3),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            curve: Curves.decelerate,
            alignment:
                initialPosition ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              width: widget.width * 0.33,
              height: widget.width * 0.13,
              decoration: BoxDecoration(
                color: widget.buttonColor,
                borderRadius: BorderRadius.circular(widget.width * 0.1),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(-2, 2),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(2, 2),
                    blurRadius: 2,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Text(
                initialPosition ? widget.values[0] : widget.values[1],
                style: TextStyle(
                  fontSize: SizeConfig.textSize(14),
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
