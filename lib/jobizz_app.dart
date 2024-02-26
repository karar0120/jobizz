import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobizz/core/routing/routes.dart';
import 'package:jobizz/core/theming/color.dart';
import 'core/routing/app_router.dart';

class JobizzApp extends StatelessWidget {
  const JobizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Jobizz App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: AppRoute.generateRoute,
      ),
    );
  }
}
