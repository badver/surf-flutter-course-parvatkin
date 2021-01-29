import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/constants.dart';

/// FavoritesButton - a button to add to favorites
class FavoritesButton extends StatelessWidget {
  const FavoritesButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {
        debugPrint('To favorites button pressed.');
      },
      icon: SvgPicture.asset(
        'res/icons/menu/heart.svg',
        color: Theme.of(context).primaryColor,
      ),
      label: Text(
        AppTexts.toFavorites,
        style: Theme.of(context).textTheme.bodyText2.copyWith(
              color: Theme.of(context).primaryColor,
            ),
      ),
    );
  }
}
