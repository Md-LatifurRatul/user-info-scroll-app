import 'package:flutter/material.dart';
import 'package:userinfo_scroll/model/user_model.dart';

class UserCard extends StatelessWidget {
  final UserModel user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(user.email, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 6),
            Text('Age: ${user.age}'),
          ],
        ),
      ),
    );
  }
}
