import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/domain/sight_type.dart';

/// SightType - a widget to show a sight type
///
/// [sight] - sight data
class SightTypeWidget extends StatelessWidget {
  const SightTypeWidget({
    Key key,
    @required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Text(
      sight.type.details.name,
      style: Theme.of(context).textTheme.bodyText1.copyWith(
            color: Theme.of(context).secondaryHeaderColor,
          ),
    );
  }
}
