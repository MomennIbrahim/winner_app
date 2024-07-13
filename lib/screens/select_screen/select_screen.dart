import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/theming/styles.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff5C8374),
        title: Row(
          children: [
            horizontalSpace(35),
            RotationTransition(
              turns: const AlwaysStoppedAnimation(-20.62 / 360),
              child: Image.asset(
                "assets/images/image.png",
                height: 60.h,
                width: 60.w,
              ),
            ),
            Text(
              "Domino",
              style: Styles.font32WhiteW400,
            ),
          ],
        ),
      ),
      body: Center(
        child: Image.asset(
          "assets/images/image.png",
          height: 74.h,
          width: 74.w,
        ),
      ),
    );
  }
}
