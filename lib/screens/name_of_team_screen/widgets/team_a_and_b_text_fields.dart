import 'package:flutter/material.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/widgets/app_text_form_field.dart';

class TeamAAndBTextFields extends StatelessWidget {
  const TeamAAndBTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: AppTextFormField(
          hintText: "Team A",
          contentPadding: EdgeInsets.symmetric(vertical: 15),
        )),
        horizontalSpace(8),
        const Expanded(
            child: AppTextFormField(
          hintText: "Team B",
          contentPadding: EdgeInsets.symmetric(vertical: 15),
        )),
      ],
    );
  }
}
