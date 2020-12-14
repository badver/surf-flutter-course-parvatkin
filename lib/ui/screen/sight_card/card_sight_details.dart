import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';

/// CardSightDetails - a widget to show a sight details
///
/// [details] - details to display
class CardSightDetails extends StatelessWidget {
  const CardSightDetails({
    Key key,
    @required this.details,
  }) : super(key: key);

  final String details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Text(
        details,
        textAlign: TextAlign.start,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.cardDetails,
      ),
    );
  }
}
