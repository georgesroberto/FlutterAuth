import 'package:flutter/material.dart';
import '../screens/splash_screen.dart';
import '../screens/register_screen.dart';
import '../screens/login_screen.dart';
import '../screens/home_screen.dart';

class NavGraph {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/home':
        final String username = settings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => HomeScreen(username: username));
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
