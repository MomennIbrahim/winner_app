import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/widgets/app_text_form_field.dart';

class TeamsTextFields extends StatelessWidget {
  const TeamsTextFields(
      {super.key, required this.isThree, required this.isTwo});

  final Map<String, bool> isThree;
  final Map<String, bool> isTwo;

  @override
  Widget build(BuildContext context) {
    if (isTwo["isTwo"] == true) {
      return Row(
        children: [
          Expanded(
            child: AppTextFormField(
              controller: context.read<AppCubit>().tA,
              hintText: "Team A",
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              validation: (value) {},
            ),
          ),
          horizontalSpace(8),
          Expanded(
            child: AppTextFormField(
              controller: context.read<AppCubit>().tB,
              hintText: "Team B",
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              validation: (value) {},
            ),
          ),
        ],
      );
    } else if (isThree["isThree"] == true) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: AppTextFormField(
                controller: context.read<AppCubit>().tA,
                hintText: "Team A",
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                validation: (value) {},
              )),
              horizontalSpace(8),
              Expanded(
                  child: AppTextFormField(
                controller: context.read<AppCubit>().tB,
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
              controller: context.read<AppCubit>().tC,
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
                controller: context.read<AppCubit>().tA,
                hintText: "Team A",
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                validation: (value) {},
              )),
              horizontalSpace(8),
              Expanded(
                  child: AppTextFormField(
                controller: context.read<AppCubit>().tB,
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
                controller: context.read<AppCubit>().tC,
                hintText: "Team C",
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                validation: (value) {},
              )),
              horizontalSpace(8),
              Expanded(
                  child: AppTextFormField(
                controller: context.read<AppCubit>().tD,
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
