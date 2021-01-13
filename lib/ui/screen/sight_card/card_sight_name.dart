import 'package:flutter/material.dart';

/// CardSightName - a widget to show a sight name
///
/// [name] - name to display
class CardSightName extends StatelessWidget {
  const CardSightName({
    Key key,
    @required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 2,
      ),
      child: Text(
        name,
        textAlign: TextAlign.start,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }
}
