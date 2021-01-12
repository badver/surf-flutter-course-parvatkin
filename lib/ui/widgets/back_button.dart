import 'package:flutter/material.dart';

/// BackButton - this is a back button to go back on tap if user want to go back from current screen.
class AppBackButton extends StatelessWidget {
  const AppBackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 32,
      child: FlatButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {},
        color: Theme.of(context).buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(Icons.chevron_left),
      ),
    );
  }
}
