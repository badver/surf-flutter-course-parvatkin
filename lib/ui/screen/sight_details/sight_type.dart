import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

/// SightType - a widget to show a sight type
///
/// [sight] - sight data
class SightType extends StatelessWidget {
  const SightType({
    Key key,
    @required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Text(
      sight.type,
      style: Theme.of(context).textTheme.bodyText1.copyWith(
            color: Theme.of(context).primaryColor,
          ),
    );
  }
}
