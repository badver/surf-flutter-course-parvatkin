import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/constants.dart';

/// SightName - a widget to show a sight name
///
/// [sight] - sight data
class SightName extends StatelessWidget {
  const SightName({
    Key key,
    @required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      child: Text(
        sight.nameSight,
        style: AppTextStyles.sightDetailsName,
      ),
    );
  }
}
