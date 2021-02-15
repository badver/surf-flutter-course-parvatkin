import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/screen/visiting_screen/visiting_screen_widgets.dart';
import 'package:places/ui/widgets/app_bottom_navigation_bar.dart';
import 'package:places/ui/widgets/custom_tab_bar.dart';

/// VisitingScreen - screen with favorites and visited places
class VisitingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          toolbarHeight: 140,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            AppTexts.favorites,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
          ),
          bottom: CustomTabBar(),
        ),
        body: const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: TabBarView(
            children: [
              ToVisitList(),
              VisitedList(),
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          onTap: (value) {
            debugPrint('Tapped menu index: $value');
          },
          selected: 2,
        ),
      ),
    );
  }
}
