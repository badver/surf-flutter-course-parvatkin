import 'package:flutter/material.dart';
import 'package:places/ui/widgets/theme_switch.dart';

/// App bar
/// Shows [title] string with app specific styles
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  const CustomAppBar({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(168);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 64),
                  title,
                ],
              ),
            ),
            // TODO move theme switch from app bar to settings
            const ThemeSwitch(),
          ],
        ),
      ),
    );
  }
}
