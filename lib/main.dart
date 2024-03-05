import 'package:flutter/material.dart';
import 'package:routes_app/routes/app_name_routes.dart';
import 'package:routes_app/routes/app_route_observer.dart';
import 'package:routes_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppNameRoutes.mainPage,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      navigatorObservers: [
        AppRouteObservier(),
      ],
    );
  }
}
