import 'package:flutter/material.dart';
import 'package:winner_app/core/theming/colors.dart';
import 'package:winner_app/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obsecureText;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? hintStyle;
  final TextInputType? keyboardType;
  final Color? backgroundColor;
  final TextAlign? textAlign;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.obsecureText,
    this.enabledBorder,
    this.focusedBorder,
    this.hintStyle,
    this.contentPadding,
    this.keyboardType,
    this.backgroundColor,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: textAlign ?? TextAlign.center,
      obscureText: obsecureText ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      style: Styles.font17BlackW400,
      decoration: InputDecoration(
        fillColor: backgroundColor ?? Colors.white,
        filled: true,
        isDense: true,
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.white, width: 1.3),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: ColorsManger.mainDarkBlue),
            ),
        hintStyle: hintStyle ?? Styles.font17BlackW400,
        hintText: hintText,
        hintFadeDuration: const Duration(milliseconds: 800),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
