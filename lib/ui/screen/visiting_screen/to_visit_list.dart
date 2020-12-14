import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

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
