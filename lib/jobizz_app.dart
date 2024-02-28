import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobizz/core/constance/string_consts.dart';
import 'package:jobizz/core/routing/routes.dart';
import 'package:jobizz/core/theming/color.dart';
import 'core/constance/sizes.dart';
import 'core/routing/app_router.dart';

class JobizzApp extends StatelessWidget {
  const JobizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(SizeConsts.s375, SizeConsts.s812),
      minTextAdapt: true,
      child: MaterialApp(
        title: StringConsts.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Poppins',
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: AppRoute.generateRoute,
      ),
    );
  }
}
