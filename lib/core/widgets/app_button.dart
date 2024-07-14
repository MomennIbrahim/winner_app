import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/core/theming/colors.dart';
import 'package:winner_app/core/theming/styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor,
    this.radius,
    this.height,
    this.width,
    this.textStyle,
  });

  final String text;
  final Function onPressed;
  final Color? buttonColor;
  final double? radius;
  final double? height;
  final double? width;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width?.w ?? double.infinity,
      height: height?.h ?? 52.h,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 16.0)),
      onPressed: () {
        onPressed();
      },
      color: buttonColor ?? ColorsManger.buttonColor,
      child: FittedBox(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: textStyle ?? Styles.font17BlackW400,
        ),
      ),
    );
  }
}
