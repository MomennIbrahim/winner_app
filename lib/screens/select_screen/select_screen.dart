import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/core/helpers/extension.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/routing/routes.dart';
import 'package:winner_app/core/widgets/app_app_bar.dart';
import 'package:winner_app/screens/select_screen/widgets/teams_count_widget.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({super.key});

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        context.pushNamed(Routes.nameOfTeamsScreen,
                            arguments: {"isTwo": true, "isThree": false});
                      });
                    },
                    child: const TeamsCountWidget(teamsCount: "2 Teams")),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        context.pushNamed(Routes.nameOfTeamsScreen,
                            arguments: {"isTwo": false, "isThree": true});
                      });
                    },
                    child: const TeamsCountWidget(teamsCount: "3 Teams")),
              ],
            ),
            verticalSpace(69),
            GestureDetector(
                onTap: () {
                  context.pushNamed(Routes.nameOfTeamsScreen, arguments: {
                    "isTwo": false,
                    "isThree": false,
                  });
                },
                child: const TeamsCountWidget(teamsCount: "4 Teams")),
          ],
        ),
      ),
    );
  }
}
