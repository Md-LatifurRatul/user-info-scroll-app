import 'package:flutter/material.dart';

class CustomSnackMessage {
  static void showSnackBarMessage(
    BuildContext context,
    String message, [
    bool isErrorMessage = false,
  ]) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isErrorMessage ? Colors.red : null,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
