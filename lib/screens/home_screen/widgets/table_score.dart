import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/screens/home_screen/widgets/four_teams_home.dart';
import 'package:winner_app/screens/home_screen/widgets/three_teams_home.dart';
import 'package:winner_app/screens/home_screen/widgets/two_teams_home.dart';

class TableScore extends StatelessWidget {
  const TableScore({
    super.key,
    required this.isCheck,
  });

  final bool isCheck;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if (context.read<AppCubit>().isTwo) {
          return TwoTeamsHome(
            isCheck: isCheck,
          );
        } else if (context.read<AppCubit>().isThree) {
          return ThreeTeamsHome(
            isCheck: isCheck,
          );
        } else {
          return FourTeamsHome(
            isCheck: isCheck,
          );
        }
      },
    );
  }
}
