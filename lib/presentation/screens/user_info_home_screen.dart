import 'package:flutter/material.dart';
import 'package:userinfo_scroll/model/user_model.dart';
import 'package:userinfo_scroll/presentation/widgets/user_card.dart';

class UserInfoHomeScreen extends StatelessWidget {
  const UserInfoHomeScreen({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Feed'), centerTitle: true),

      body: ListView.builder(
        physics: const BouncingScrollPhysics(),

        itemBuilder: (context, index) {
          return UserCard(user: user);
        },
      ),
    );
  }
}
