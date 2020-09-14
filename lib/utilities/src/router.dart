import 'package:blucos/screens/screens.dart';
import 'package:flutter/material.dart';

///A class that handles route/screen navigation for this app.
class Router {
  ///Returns a named route corresponding to the [settings.name] argument.
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => MapScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
