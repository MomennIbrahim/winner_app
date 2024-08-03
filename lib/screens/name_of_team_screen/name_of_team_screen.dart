import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/theming/colors.dart';
import 'package:winner_app/core/widgets/app_app_bar.dart';
import 'package:winner_app/screens/name_of_team_screen/widgets/teams_text_fields.dart';
import 'package:winner_app/screens/name_of_team_screen/widgets/top_score_widget.dart';

class NameOfTeamScreen extends StatelessWidget {
  const NameOfTeamScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        // ignore: deprecated_member_use
        return WillPopScope(
          onWillPop: () async {
            context.read<AppCubit>().tAController.clear();
            context.read<AppCubit>().tBController.clear();
            context.read<AppCubit>().tCController.clear();
            context.read<AppCubit>().tDController.clear();
            return true;
          },
          child: Scaffold(
            appBar: AppAppBar(
              automaticallyImplyLeading: true,
              space: 50.w,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 34.0.w),
              child: Center(
                child: Container(
                  height: context.read<AppCubit>().isThree
                      ? 470.h
                      : context.read<AppCubit>().isTwo
                          ? 400.h
                          : 470.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff5C8374),
                  ),
                  child: Form(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 44.h,
                            color: ColorsManger.mainDarkBlue,
                          ),
                          const TeamsTextFields(),
                          verticalSpace(51),
                          const TopScoreWidget(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
