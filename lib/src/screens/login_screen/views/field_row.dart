import 'package:flutter/material.dart';
import 'package:rocket_lab_technical/src/config/color_configs.dart';

class FieldRow extends StatelessWidget {
  const FieldRow({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.obscured = false,
  });

  final String label;
  final String hint;
  final bool obscured;
  final TextEditingController controller;

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
              controller: controller,
              decoration: InputDecoration(
                hintStyle: fieldHintStyle,
                hintText: hint,
              ),
              obscureText: obscured,
            ),
          )
        ]
      ),
    );
  }
}
