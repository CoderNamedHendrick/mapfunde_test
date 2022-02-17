import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/size_config.dart';

class CustomChip<T> extends StatelessWidget {
  const CustomChip({
    Key? key,
    required this.chipContent,
    this.groupValue,
    required this.value,
    this.onChanged,
  }) : super(key: key);
  final Widget chipContent;
  final T? groupValue;
  final T value;
  final ValueChanged<T?>? onChanged;

  bool get _isSelected => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged != null ? () => onChanged!(value) : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              SizeConfig.width(20),
            ),
          ),
          color: Colors.white,
          boxShadow: _isSelected
              ? const [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(0, 2),
                    blurRadius: 2,
                    spreadRadius: 0,
                  ),
                ]
              : null,
        ),
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.height(12),
          horizontal: SizeConfig.width(17),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 2,
        ),
        child: chipContent,
      ),
    );
  }
}
