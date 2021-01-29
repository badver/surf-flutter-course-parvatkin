import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/constants.dart';

/// PlanButton - a button to plan/schedule a visit to a sight
class PlanButton extends StatelessWidget {
  const PlanButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {
        debugPrint('Plan button pressed.');
      },
      icon: SvgPicture.asset(
        'res/icons/other/calendar.svg',
        color: Theme.of(context).disabledColor,
      ),
      label: Text(
        AppTexts.toPlan,
        style: Theme.of(context).textTheme.bodyText2.copyWith(
              color: Theme.of(context).disabledColor,
            ),
      ),
    );
  }
}
