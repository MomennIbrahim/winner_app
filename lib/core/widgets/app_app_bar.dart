import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';

import '../helpers/spacing.dart';
import '../theming/styles.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({super.key, this.automaticallyImplyLeading, this.space});

  final bool? automaticallyImplyLeading;
  final double? space;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color(0xff5C8374),
      automaticallyImplyLeading: automaticallyImplyLeading ?? false,
      actions: [
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Are you sure to all score?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("No"),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<AppCubit>().deleteAllScore();

                      Navigator.of(context).pop();
                    },
                    child: const Text("Yes"),
                  ),
                ],
              ),
            );
          },
          icon: const Icon(Icons.delete),
        ),
      ],
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
          horizontalSpace(space?.w ?? 10),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
