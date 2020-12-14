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
      icon: const Icon(
        Icons.calendar_today,
        color: AppColors.disabled,
      ),
      label: const Text(
        AppTexts.toPlan,
        style: AppTextStyles.toPlan,
      ),
    );
  }
}
