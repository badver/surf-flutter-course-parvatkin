import 'package:flutter/material.dart';
import 'package:places/data/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

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
            onShareTap: () {
              debugPrint('Share button clicked');
            },
            onDeleteTap: () {
              debugPrint('Delete button clicked');
            },
          ),
      ],
    );
  }
}
