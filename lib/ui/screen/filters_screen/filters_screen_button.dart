import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';

class FiltersScreenButton extends StatelessWidget {
  final int count;

  const FiltersScreenButton({
    Key key,
    this.count = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: FlatButton(
        onPressed: () {
          debugPrint('Show all pressed.');
        },
        color: AppColorsLight.green,
        height: 48,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          '${AppTexts.show} ($count)'.toUpperCase(),
          style: Theme.of(context).textTheme.button.copyWith(
                color: AppColorsLight.white,
              ),
        ),
      ),
    );
  }
}
