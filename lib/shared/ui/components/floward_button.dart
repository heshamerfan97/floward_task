import 'package:flutter/material.dart';
import 'package:floward_task/language/localize_helper.dart';
import 'package:floward_task/shared/ui/helper/export.dart';

class FlowardButton extends StatelessWidget {
  const FlowardButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.isActive,
    this.style,
    this.width,
    this.padding,
    this.height = 48,
    this.color,
    this.borderColor,
    this.hasBorder = false,
  }) : super(key: key);
  final void Function() onTap;
  final String text;
  final bool isActive;
  final double? width, padding, height;
  final Color? color, borderColor;
  final TextStyle? style;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: padding ?? 20),
        decoration: BoxDecoration(
            color: isActive ? (color ?? Palette.primaryBlue) : Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            border: hasBorder ? Border.all(color: borderColor??Palette.white) : null),
        child: Text(
          text.localize(context),
          textAlign: TextAlign.center,
          style: style ?? TextStyles.baseWhiteText,
        ),
      ),
    );
  }
}
