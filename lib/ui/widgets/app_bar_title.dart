import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';

/// Appbar title
class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppTexts.appHeader,
      style: AppTextStyles.appBarTitle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
