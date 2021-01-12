import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';

/// PlanButton - a button to plan/schedule a visit to a sight
class PlanButton extends StatelessWidget {
  const PlanButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.calendar_today,
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
