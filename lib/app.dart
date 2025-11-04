import 'package:flutter/material.dart';
import 'package:userinfo_scroll/services/routes/app_routes.dart';

class UserInfoScrollingApp extends StatelessWidget {
  const UserInfoScrollingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

 title: "Flutter User Info",

debugShowCheckedModeBanner: false,
theme: ThemeData(
  primarySwatch: Colors.teal,
  useMaterial3: true
),
initialRoute: AppRoutes.splash,
routes: AppRoutes.routes,

    );
  }
}