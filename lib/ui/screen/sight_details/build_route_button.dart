import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/constants.dart';

/// BuildRouteButton - a button to build a route to a sight
class BuildRouteButton extends StatelessWidget {
  const BuildRouteButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {
        debugPrint('Build route button pressed.');
      },
      color: AppColorsLight.green,
      height: 48,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      icon: SvgPicture.asset(
        'res/icons/other/go.svg',
        color: AppColorsLight.white,
      ),
      label: Text(
        AppTexts.buildRoute,
        style: Theme.of(context).textTheme.button.copyWith(
              color: AppColorsLight.white,
            ),
      ),
    );
  }
}
