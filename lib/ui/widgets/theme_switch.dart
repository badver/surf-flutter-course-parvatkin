import 'package:flutter/material.dart';
import 'package:places/ui/widgets/theme_controller.dart';
import 'package:provider/provider.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: (value) {
        final controller = context.read<ThemeController>();
        if (value) {
          controller.toDark();
        } else {
          controller.toLight();
        }
      },
      value: context.watch<ThemeController>().isDark,
    );
  }
}
