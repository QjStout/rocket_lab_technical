import 'package:flutter/material.dart';
import 'package:rocket_lab_technical/src/screens/login_screen/views/login_surface.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login_background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Center(
            child: SizedBox(width: 400, child: LoginSurface()),
          ),
        ],
      ),
    );
  }
}