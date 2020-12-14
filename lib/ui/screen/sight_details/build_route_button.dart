import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';

/// BuildRouteButton - a button to build a route to a sight
class BuildRouteButton extends StatelessWidget {
  const BuildRouteButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {},
      color: AppColors.green,
      height: 48,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      icon: const Icon(
        Icons.input,
        color: AppColors.white,
      ),
      label: const Text(
        AppTexts.buildRoute,
        style: AppTextStyles.buildRouteButton,
      ),
    );
  }
}
