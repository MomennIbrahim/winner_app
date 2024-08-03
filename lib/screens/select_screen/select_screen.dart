import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/core/helpers/extension.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/routing/routes.dart';
import 'package:winner_app/core/widgets/app_app_bar.dart';
import 'package:winner_app/screens/select_screen/widgets/teams_count_widget.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        if (state is ChangeIsTwoState ||
            state is ChangeIsThreeState ||
            state is ChangeIsFourState) {
          context.pushNamed(
            Routes.nameOfTeamsScreen,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const AppAppBar(),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<AppCubit>().changeIsTwo();
                      },
                      child: const TeamsCountWidget(teamsCount: "2 Teams"),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<AppCubit>().changeIsThree();
                      },
                      child: const TeamsCountWidget(teamsCount: "3 Teams"),
                    ),
                  ],
                ),
                verticalSpace(69),
                GestureDetector(
                    onTap: () {
                      context.read<AppCubit>().changeIsFour();
                    },
                    child: const TeamsCountWidget(teamsCount: "4 Teams")),
              ],
            ),
          ),
        );
      },
    );
  }
}
