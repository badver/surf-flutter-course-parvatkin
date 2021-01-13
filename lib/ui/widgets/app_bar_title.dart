import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';

/// Appbar title
class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTexts.appHeader,
      style: Theme.of(context).textTheme.headline1,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
