import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/spacing.dart';
import '../theming/styles.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color(0xff5C8374),
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
          horizontalSpace(10),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
