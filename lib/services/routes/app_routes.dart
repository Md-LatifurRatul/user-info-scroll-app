import 'package:flutter/material.dart';
import 'package:userinfo_scroll/model/user_model.dart';
import 'package:userinfo_scroll/presentation/screens/splash_screen.dart';
import 'package:userinfo_scroll/presentation/screens/user_form_screen.dart';
import 'package:userinfo_scroll/presentation/screens/user_info_home_screen.dart';

class AppRouter {
  static const String splash = '/';
  static const String userForm = '/userForm';
  static const String userInfo = '/userInfo';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case userForm:
        return MaterialPageRoute(builder: (_) => const UserFormScreen());
      default:
        return _errorRoute("Route not found: ${settings.name}");
    }
  }

  static Route<dynamic> _errorRoute(String message) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: Center(child: Text(message)),
      ),
    );
  }

  static void navigateToUserInfo(BuildContext context, UserModel user) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => UserInfoHomeScreen(user: user)),
    );
  }
}
