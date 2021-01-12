import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';

/// FavoritesButton - a button to add to favorites
class FavoritesButton extends StatelessWidget {
  const FavoritesButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.details,
        color: AppColorsLight.secondaryBlack,
      ),
      label: Text(
        AppTexts.toFavorites,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
