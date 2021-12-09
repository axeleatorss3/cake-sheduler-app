import 'package:cake_scheduler/views/Login/login.dart';
import 'package:cake_scheduler/views/Login/sign_in.dart';
import 'package:cake_scheduler/views/Login/sing_up_modal.dart';
import 'package:flutter/material.dart';
import 'package:cake_scheduler/routes/routes_name.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePageRoute:
        return MaterialPageRoute(builder: (_) => Login());
      case singInRoute:
        return MaterialPageRoute(builder: (_) => SignInPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('no route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
