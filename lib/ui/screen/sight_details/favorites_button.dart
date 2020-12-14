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
        color: AppColors.black,
      ),
      label: const Text(
        AppTexts.toFavorites,
        style: AppTextStyles.toFavorites,
      ),
    );
  }
}
