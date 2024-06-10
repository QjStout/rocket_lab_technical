import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rocket_lab_technical/src/screens/display_list_screen/display_list_screen.dart';
import 'package:rocket_lab_technical/src/screens/login_screen/views/field_row.dart';
import 'package:rocket_lab_technical/src/state/app_state.dart';

class LoginSurface extends StatefulWidget {
  const LoginSurface({super.key});

  @override
  State<LoginSurface> createState() => _LoginSurfaceState();
}

class _LoginSurfaceState extends State<LoginSurface> {
  final emailFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();

  @override
  void dispose() {
    emailFieldController.dispose();
    passwordFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();

    final theme = Theme.of(context);
    final themeText = theme.textTheme;
    final themeColors = theme.colorScheme;
  

    final titleStyle = themeText.displayMedium!.copyWith(
      color: themeColors.primary,
    );

    return Card(
      elevation: 50,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Login', style: titleStyle),
              ],
            ),
            FieldRow(label: 'Email:', hint: 'username@example.com', controller: emailFieldController),
            FieldRow(label: 'Password:', hint: '**********', controller: passwordFieldController, obscured: true,),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    appState.login(emailFieldController.text, passwordFieldController.text);
                    if (appState.loggedIn) {
                      Navigator.popAndPushNamed(context, DisplayListScreen.routeName);
                    }
                  },
                  child: const Text('Login'),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
