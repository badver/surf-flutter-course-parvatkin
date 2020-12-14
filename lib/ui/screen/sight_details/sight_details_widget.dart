import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/constants.dart';

/// SightDetailsWidget - a widget to show a sight details
///
/// [sight] - sight data
class SightDetailsWidget extends StatelessWidget {
  const SightDetailsWidget({
    Key key,
    @required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Text(
        sight.details,
        style: AppTextStyles.sightDetailsDetails,
      ),
    );
  }
}
