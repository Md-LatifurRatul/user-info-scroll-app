import 'package:flutter/material.dart';
import 'package:userinfo_scroll/model/user_model.dart';
import 'package:userinfo_scroll/presentation/widgets/custom_elevated_button.dart';
import 'package:userinfo_scroll/presentation/widgets/custom_snack_message.dart';
import 'package:userinfo_scroll/services/routes/app_routes.dart';

class UserFormScreen extends StatefulWidget {
  const UserFormScreen({super.key});

  @override
  State<UserFormScreen> createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _ageTEController = TextEditingController();

  void _submitUserForm() {
    if (_formKey.currentState!.validate()) {
      final user = UserModel(
        name: _nameTEController.text,
        email: _emailTEController.text,
        age: int.parse(_ageTEController.text),
      );

      CustomSnackMessage.showSnackBarMessage(
        context,
        "Form submitted successfully!",
      );

      _nameTEController.clear();
      _emailTEController.clear();
      _ageTEController.clear();
      Future.delayed(const Duration(milliseconds: 500), () {
        AppRouter.navigateToUserInfo(context, user);
      });
    } else {
      CustomSnackMessage.showSnackBarMessage(
        context,
        "Please fill all fields!",
        true,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enter Your Info'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameTEController,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Enter your name' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailTEController,
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) => value == null || !value.contains('@')
                    ? 'Enter valid email'
                    : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _ageTEController,
                decoration: const InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Enter your age';
                  final age = int.tryParse(value);
                  if (age == null || age <= 0) return 'Enter valid age';
                  return null;
                },
              ),
              const SizedBox(height: 24),
              CustomElevatedButton(
                buttonTextName: "Continue",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _submitUserForm();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameTEController.dispose();
    _emailTEController.dispose();
    _ageTEController.dispose();
    super.dispose();
  }
}
