
import 'package:flutter/material.dart';
import 'package:rocket_lab_technical/src/config/color_configs.dart';

class LoginSurface extends StatelessWidget {
  const LoginSurface({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FieldRow(label: 'Email:', hint: 'username@example.com'),
            FieldRow(label: 'Password:', hint: '**********'),
          ],
        ),
      )
    );
  }
}

class FieldRow extends StatelessWidget {
  const FieldRow({
    super.key,
    required this.label,
    required this.hint,
  });

  final String label;
  final String hint;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeText = theme.textTheme;
    final themeColors = theme.colorScheme;

    final fieldLabelStyle = themeText.labelLarge!.copyWith(
      color: themeColors.primary,
    );

    final fieldHintStyle = themeText.bodyLarge!.copyWith(
      color: ColorTokens.roseQuarts,
    );

    return SizedBox(
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(label, style: fieldLabelStyle),
          const SizedBox(width: 10),
          SizedBox(
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                hintStyle: fieldHintStyle,
                hintText: hint
              ),
            ),
          )
        ]
      ),
    );
  }
}
