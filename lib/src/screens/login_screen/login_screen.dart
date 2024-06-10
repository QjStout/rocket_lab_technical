
import 'package:flutter/material.dart';
import 'package:rocket_lab_technical/src/config/color_configs.dart';

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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_background.jpg'),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}