import 'package:flutter/material.dart';
import 'package:jobizz/core/routing/routes.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
      // return MaterialPageRoute(
      //     builder: (context) => BlocProvider<LoginCubit>(
      //           create: (context) => getIt<LoginCubit>(),
      //           child: const LoginScreen(),
      //         ));

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("No Route Found"),
              ),
              body: const Center(child: Text("No Route Found")),
            ));
  }
}
