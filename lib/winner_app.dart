import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/core/routing/app_router.dart';
import 'package:winner_app/core/routing/routes.dart';
import 'package:winner_app/core/theming/colors.dart';

class WinnerApp extends StatelessWidget {
  final AppRouter appRouter;
  const WinnerApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => AppCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashScreen,
          title: "Winner App",
          onGenerateRoute: appRouter.generateRoute,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(
              color: Colors.white,
            )),
            primaryColor: ColorsManger.mainDarkBlue,
            scaffoldBackgroundColor: ColorsManger.scaffoldColor,
          ),
        ),
      ),
    );
  }
}
