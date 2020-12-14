import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';

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
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 151),
        child: Container(
          padding: const EdgeInsets.only(
            left: 3,
            top: 2,
            right: 9,
          ),
          color: AppColors.gray2,
          child: Text(
            name,
            textAlign: TextAlign.start,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.cardName,
          ),
        ),
      ),
    );
  }
}
