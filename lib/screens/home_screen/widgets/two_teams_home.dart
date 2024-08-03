import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/core/widgets/vertical_divider.dart';
import 'package:winner_app/core/widgets/winner_widget.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';

class TwoTeamsHome extends StatelessWidget {
  const TwoTeamsHome({super.key, required this.isCheck});

  final bool isCheck;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if (!isCheck) {
          if (context.read<AppCubit>().totalAScore >=
                  int.parse(context.read<AppCubit>().topScoreController.text) ||
              context.read<AppCubit>().totalBScore >=
                  int.parse(context.read<AppCubit>().topScoreController.text)) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              popWinner(context);
            });
          }
        }
        var tAListScore = context.read<AppCubit>().tAListScore;
        var tBListScore = context.read<AppCubit>().tBListScore;
        return IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FittedBox(
                      child: Text(
                        context.read<AppCubit>().tAController.text.isNotEmpty
                            ? context.read<AppCubit>().tAController.text
                            : "Team A",
                        style: Styles.font28WhiteW400,
                      ),
                    ),
                    verticalSpace(20),
                    Expanded(
                      child: Column(
                        children: List.generate(
                          context.read<AppCubit>().tAListScore.length,
                          (index) => Padding(
                            padding: EdgeInsets.only(bottom: 4.0.h),
                            child: Row(
                              children: [
                                if (tAListScore.last.toString() ==
                                    tAListScore[index].toString())
                                  GestureDetector(
                                    onTap: () {
                                      context
                                          .read<AppCubit>()
                                          .removeLastElementTA();
                                    },
                                    child: const Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  ),
                                Expanded(
                                  child: Text(
                                    context
                                        .read<AppCubit>()
                                        .tAListScore[index]
                                        .toString(),
                                    textAlign: TextAlign.center,
                                    style: Styles.font28White600,
                                  ),
                                ),
                                if (tAListScore.last.toString() ==
                                    tAListScore[index].toString())
                                  horizontalSpace(24)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalDivider(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FittedBox(
                      child: Text(
                        context.read<AppCubit>().tBController.text.isNotEmpty
                            ? context.read<AppCubit>().tBController.text
                            : "Team B",
                        style: Styles.font28WhiteW400,
                      ),
                    ),
                    verticalSpace(20),
                    Column(
                      children: List.generate(
                        context.read<AppCubit>().tBListScore.length,
                        (index) => Padding(
                          padding: EdgeInsets.only(bottom: 4.0.h),
                          child: Row(
                            children: [
                              if (tBListScore.last.toString() ==
                                  tBListScore[index].toString())
                                GestureDetector(
                                  onTap: () {
                                    context
                                        .read<AppCubit>()
                                        .removeLastElementTB();
                                  },
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                ),
                              Expanded(
                                child: Padding(
                                  padding: tBListScore.last.toString() ==
                                          tBListScore[index].toString()
                                      ? EdgeInsets.only(right: 24.w)
                                      : const EdgeInsets.only(),
                                  child: Text(
                                    context
                                        .read<AppCubit>()
                                        .tBListScore[index]
                                        .toString(),
                                    textAlign: TextAlign.center,
                                    style: Styles.font28White600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
