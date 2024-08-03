import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/widgets/app_text_form_field.dart';

class TeamsTextFields extends StatelessWidget {
  const TeamsTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.read<AppCubit>().isTwo) {
      return Row(
        children: [
          Expanded(
            child: AppTextFormField(
              controller: context.read<AppCubit>().tAController,
              hintText: "Team A",
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              validation: (value) {},
            ),
          ),
          horizontalSpace(8),
          Expanded(
            child: AppTextFormField(
              controller: context.read<AppCubit>().tBController,
              hintText: "Team B",
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              validation: (value) {},
            ),
          ),
        ],
      );
    } else if (context.read<AppCubit>().isThree) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: AppTextFormField(
                controller: context.read<AppCubit>().tAController,
                hintText: "Team A",
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                validation: (value) {},
              )),
              horizontalSpace(8),
              Expanded(
                  child: AppTextFormField(
                controller: context.read<AppCubit>().tBController,
                hintText: "Team B",
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                validation: (value) {},
              )),
            ],
          ),
          verticalSpace(10),
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 2.4,
            child: AppTextFormField(
              controller: context.read<AppCubit>().tCController,
              hintText: "Team C",
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              validation: (value) {},
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: AppTextFormField(
                controller: context.read<AppCubit>().tAController,
                hintText: "Team A",
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                validation: (value) {},
              )),
              horizontalSpace(8),
              Expanded(
                  child: AppTextFormField(
                controller: context.read<AppCubit>().tBController,
                hintText: "Team B",
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                validation: (value) {},
              )),
            ],
          ),
          verticalSpace(10),
          Row(
            children: [
              Expanded(
                  child: AppTextFormField(
                controller: context.read<AppCubit>().tCController,
                hintText: "Team C",
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                validation: (value) {},
              )),
              horizontalSpace(8),
              Expanded(
                  child: AppTextFormField(
                controller: context.read<AppCubit>().tDController,
                hintText: "Team D",
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                validation: (value) {},
              )),
            ],
          ),
        ],
      );
    }
  }
}
