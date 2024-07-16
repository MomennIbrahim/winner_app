import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/core/theming/styles.dart';

class TableScore extends StatelessWidget {
  const TableScore({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  context.read<AppCubit>().tA.text,
                  style: Styles.font32WhiteW400,
                ),
                Column(
                  children: List.generate(
                    10,
                    (index) => Text(
                      "50",
                      textAlign: TextAlign.center,
                      style: Styles.font28White600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const VerticalDivider(
            color: Colors.white,
            thickness: 1.8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  context.read<AppCubit>().tB.text,
                  style: Styles.font32WhiteW400,
                ),
                Column(
                  children: List.generate(
                    10,
                    (index) => Text(
                      "50",
                      textAlign: TextAlign.center,
                      style: Styles.font28White600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
