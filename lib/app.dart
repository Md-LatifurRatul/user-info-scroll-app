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
        useMaterial3: true,
        inputDecorationTheme: textFormFieldDecoration(),
      ),
      initialRoute: AppRouter.splash,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }

  Widget textFormFieldDecoration() {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0x330C0310), width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.blue, width: 2.0),
      ),
    );
  }
}
