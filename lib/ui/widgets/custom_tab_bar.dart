import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/widgets/custom_tab_indicator.dart';

/// Custom Tab bar - self describing name
class CustomTabBar extends PreferredSize {
  @override
  Size get preferredSize => const Size.fromHeight(52);

  @override
  Widget get child => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 6,
        ),
        child: Container(
          decoration: AppDecorations.tabBarBackground,
          child: const TabBar(
            indicator: CustomTabIndicator(),
            unselectedLabelColor: AppColors.tabUnselectedLabel,
            labelStyle: AppTextStyles.tabLabel,
            tabs: [
              Tab(text: AppTexts.toVisit),
              Tab(text: AppTexts.visited),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) => child;
}
