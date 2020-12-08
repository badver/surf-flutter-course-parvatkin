import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  SightListScreen({Key key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackground,
        elevation: 0,
        toolbarHeight: 128,
        centerTitle: false,
        title: const AppBarTitle(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...mocks.map(
              (m) => SightCard(sight: m),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppTexts.appHeader,
      style: AppTextStyles.appBarTitle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
