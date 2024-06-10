import 'package:flutter/material.dart';

import '../../config/color_configs.dart';

class DisplayListScreen extends StatelessWidget {
  const DisplayListScreen({super.key});

  static const routeName = '/display_list';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeText = theme.textTheme;
    final themeColors = theme.colorScheme;
  
    final titleStyle = themeText.displaySmall!.copyWith(
      color: themeColors.primary,
    );

    return Scaffold(
      backgroundColor: themeColors.primary,
      body: Center(
        child: SizedBox(
          width: 400,
          child: Card(
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
                      Text('Display List', style: titleStyle)
                    ],
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
