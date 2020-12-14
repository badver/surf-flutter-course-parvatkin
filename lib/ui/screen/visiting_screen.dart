import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/screen/app_bottom_navigation_bar.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/widgets/custom_tab_bar.dart';

/// VisitingScreen - screen with favorites and visited places
class VisitingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 140,
          backgroundColor: AppColors.appBarBackground,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            AppTexts.favorites,
            style: AppTextStyles.appBarTitleFavorites,
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
        bottomNavigationBar: const AppBottomNavigationBar(selected: 1),
      ),
    );
  }
}

/// VisitedList - shows list of places to visit
class VisitedList extends StatelessWidget {
  const VisitedList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = mocks.length ~/ 2; i < mocks.length; i++)
          SightCard(
            sight: mocks[i],
          ),
      ],
    );
  }
}

/// ToVisitList - shows list of visited places
class ToVisitList extends StatelessWidget {
  const ToVisitList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = 0; i < mocks.length / 2; i++)
          SightCard(
            sight: mocks[i],
          ),
      ],
    );
  }
}
