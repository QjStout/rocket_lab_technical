
import 'package:flutter/material.dart';
import 'package:rocket_lab_technical/src/config/color_configs.dart';
import 'package:rocket_lab_technical/src/screens/login_screen/views/login_surface.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeText = theme.textTheme;
    final themeColors = theme.colorScheme;
  
    final titleStyle = themeText.displayMedium!.copyWith(
      color: ColorTokens.royalBlue
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: titleStyle),
        backgroundColor: themeColors.onPrimary,
      ),
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
            child: LoginSurface(),
          ),
        ],
      ),
    );
  }
}