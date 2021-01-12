import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/widgets/custom_tab_indicator.dart';

/// Custom Tab bar - self describing name
class CustomTabBar extends PreferredSize {
  @override
  Size get preferredSize => const Size.fromHeight(52);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      child: Container(
        decoration: AppDecorations.tabBarBackground,
        child: TabBar(
          indicator: const CustomTabIndicator(),
          unselectedLabelColor: AppColorsLight.inactiveBlack,
          labelStyle: Theme.of(context).textTheme.bodyText1,
          tabs: const [
            Tab(text: AppTexts.toVisit),
            Tab(text: AppTexts.visited),
          ],
        ),
      ),
    );
  }
}
