import 'package:flutter/material.dart';
import 'package:userinfo_scroll/presentation/screens/splash_screen.dart';
import 'package:userinfo_scroll/presentation/screens/user_form_screen.dart';
import 'package:userinfo_scroll/presentation/screens/user_info_home_screen.dart';

class AppRoutes {

static const String splash = "/";
 static const String userForm = '/userForm';
 static const String userInfo = '/userinfo';


static final Map<String, WidgetBuilder> routes = {
  splash: (context) => const SplashScreen(),
  userForm: (context) => const UserFormScreen(),
  userInfo: (context) => const UserInfoHomeScreen(),


};




}