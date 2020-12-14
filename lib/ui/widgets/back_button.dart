import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';

/// BackButton - this is a back button to go back on tap if user want to go back from current screen.
class BackButton extends StatelessWidget {
  const BackButton({
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
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(Icons.chevron_left),
      ),
    );
  }
}
