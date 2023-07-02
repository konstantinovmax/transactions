import 'package:flutter/material.dart';
import 'package:transactions/modules/auth_module/views/auth/auth_view.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  static Route route() {
    return MaterialPageRoute<Widget>(
      builder: (context) => const AuthPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AuthView();
  }
}
