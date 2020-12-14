import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/widgets/app_bar_title.dart';
import 'package:places/ui/widgets/app_bottom_navigation_bar.dart';
import 'package:places/ui/widgets/custom_app_bar.dart';

/// SightListScreen - screen with sight cards
class SightListScreen extends StatefulWidget {
  const SightListScreen({Key key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: AppBarTitle(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: mocks.map((m) => SightCard(sight: m)).toList(),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(selected: 0),
    );
  }
}
