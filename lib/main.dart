import 'package:flutter/material.dart';
import 'package:places/ui/app.dart';
import 'package:places/ui/widgets/theme_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeController>(
      create: (_) => ThemeController(isDark: false),
      child: App(),
    ),
  );
}
