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
      icon: Icon(
        Icons.details,
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
