import 'package:flutter/material.dart';
import 'package:routes_app/pages/detail_page.dart';
import 'package:routes_app/pages/home_page.dart';
import 'package:routes_app/pages/main_page.dart';
import 'package:routes_app/pages/simple_page.dart';
import 'package:routes_app/routes/app_name_routes.dart';

class AppRoutes {
  const AppRoutes();

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppNameRoutes.mainPage:
        {
          return MaterialPageRoute(builder: (context) => const MainPage(), settings: settings);
        }
      case AppNameRoutes.homePage:
        {
          return MaterialPageRoute(builder: (context) => const HomePage(), settings: settings);
        }
      case AppNameRoutes.simplePage:
        {
          return MaterialPageRoute(builder: (context) => const SimplePage(), settings: settings);
        }
      case AppNameRoutes.detailPage:
        {
          return MaterialPageRoute(builder: (context) => const DetailPAge(), settings: settings);
        }

      default:
        {
          return _errorPage();
        }
    }
  }

  static Route _errorPage() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text("Error page"),
        ),
      ),
    );
  }
}
