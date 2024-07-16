import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/theming/colors.dart';
import 'package:winner_app/core/theming/styles.dart';
import 'package:winner_app/core/widgets/app_button.dart';
import 'package:winner_app/core/widgets/app_text_form_field.dart';

class TotalScoreWidget extends StatelessWidget {
  const TotalScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(color: ColorsManger.scaffoldColor, boxShadow: [
        BoxShadow(
          blurRadius: 1.5,
          color: Colors.black12,
          blurStyle: BlurStyle.inner,
          spreadRadius: 11,
          offset: Offset(0, 3),
        )
      ]),
      height: 180.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildTotalWidget(totalScore: "50", context: context),
            buildTotalWidget(totalScore: "250", context: context),
          ],
        ),
      ),
    );
  }

  buildTotalWidget(
      {required String totalScore, required BuildContext context}) {
    return Column(
      children: [
        Text(
          "Total",
          style: Styles.font20WhiteW400,
        ),
        SizedBox(
          width: 80.w,
          child: const Divider(
            thickness: 2,
            color: Colors.white,
          ),
        ),
        Text(
          totalScore,
          style: Styles.font28White600,
        ),
        verticalSpace(10),
        AppButton(
          text: "Add",
          textStyle: Styles.font20WhiteW400,
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      backgroundColor: ColorsManger.mainDarkBlue,
                      title: Column(
                        children: [
                          AppTextFormField(
                            hintText: "Add new score",
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.number,
                            validation: (value) {},
                          ),
                          verticalSpace(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Cancel",
                                  style: Styles.font20WhiteW400,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Ok",
                                  style: Styles.font20WhiteW400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ));
          },
          width: 75,
          height: 42,
          buttonColor: ColorsManger.mainDarkBlue,
        ),
      ],
    );
  }
}
