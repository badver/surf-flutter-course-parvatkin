import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/widgets/app_bottom_navigation_bar.dart';
import 'package:places/ui/widgets/theme_switch.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 56,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppTexts.settings,
          style: Theme.of(context).textTheme.subtitle1.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SettingsItem(
              title: AppTexts.darkTheme,
              trailing: ThemeSwitch(),
            ),
            const Divider(
              height: 1,
            ),
            SettingsItem(
              title: AppTexts.watchTutorial,
              trailing: SvgPicture.asset(
                'res/icons/other/info.svg',
                color: AppColorsLight.green,
              ),
              onTap: () {
                debugPrint('Navigate to tutorial');
              },
            ),
            const Divider(
              height: 1,
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        onTap: (value) {
          debugPrint('Tapped menu index: $value');
        },
        selected: 3,
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final GestureTapCallback onTap;
  final String title;
  final Widget trailing;

  const SettingsItem({
    Key key,
    @required this.title,
    this.onTap,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        title,
        style: Theme.of(context).textTheme.subtitle2.copyWith(
              fontWeight: FontWeight.w400,
            ),
      ),
      onTap: onTap,
      trailing: trailing,
    );
  }
}
