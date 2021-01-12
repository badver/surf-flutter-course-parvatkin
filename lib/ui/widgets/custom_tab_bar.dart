import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';

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
        decoration: AppDecorations.tabBarBackground.copyWith(
          color: Theme.of(context).backgroundColor,
        ),
        clipBehavior: Clip.antiAlias,
        child: const Material(
          type: MaterialType.transparency,
          child: TabBar(
            tabs: [
              Tab(text: AppTexts.toVisit),
              Tab(text: AppTexts.visited),
            ],
          ),
        ),
      ),
    );
  }
}
