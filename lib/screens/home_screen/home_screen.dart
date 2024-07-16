import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/theming/styles.dart';
import 'package:winner_app/core/widgets/app_app_bar.dart';
import 'package:winner_app/screens/home_screen/widgets/table_score.dart';
import 'package:winner_app/screens/home_screen/widgets/total_score_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.isCheck});

  final Map<String ,bool> isCheck;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(
        automaticallyImplyLeading: true,
      ),
      bottomNavigationBar: const TotalScoreWidget(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 32.0.h,
            horizontal: 32.w,
          ),
          child: Column(
            children: [
              Text(
                context.read<AppCubit>().topScoreController.text.isEmpty || isCheck["isCheck"] == true
                    ? "No top score"
                    : context.read<AppCubit>().topScoreController.text,
                style: Styles.font32WhiteW400,
              ),
              verticalSpace(30),
              const TableScore(),
            ],
          ),
        ),
      ),
    );
  }
}
