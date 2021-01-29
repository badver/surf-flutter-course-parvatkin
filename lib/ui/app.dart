import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/widgets/theme_controller.dart';
import 'package:provider/provider.dart';

/// Main application widget
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeController>().getTheme();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Course App',
      theme: theme,
      home: const SightListScreen(),
      // home: VisitingScreen(),
      // home: SightDetails(sight: mocks[0]),
    );
  }
}
