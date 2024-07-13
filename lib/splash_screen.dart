import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/core/helpers/extension.dart';
import 'package:winner_app/core/routing/app_router.dart';
import 'package:winner_app/core/routing/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<double> fadeInAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToOtherPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0.w),
            child: Image.asset("assets/images/domino.png"),
          ),
          SizedBox(height: 10.h),
          Image.asset("assets/images/splash_image.gif"),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 15), end: Offset.zero)
            .animate(animationController);

    fadeInAnimation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);

    animationController.forward();
  }

  void navigateToOtherPage() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        context.pushNamed(Routes.selectScreen);
      },
    );
  }
}
