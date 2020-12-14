import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/sight_details/sight_details_widgets.dart';

/// SightDetails - screen with sight details
///
/// [sight] - sight data to display
class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({
    Key key,
    @required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailsHeader(sight: sight),
            DetailsBody(sight: sight),
          ],
        ),
      ),
    );
  }
}
