import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// BottomNavigationBar
/// [selected] - index of selected tab
class AppBottomNavigationBar extends StatelessWidget {
  final int selected;
  final ValueChanged<int> onTap;

  const AppBottomNavigationBar({
    Key key,
    @required this.selected,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.2,
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0.0,
        currentIndex: selected,
        onTap: onTap,
        unselectedItemColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'res/icons/menu/list.svg',
              color: Theme.of(context).primaryColor,
            ),
            activeIcon: SvgPicture.asset(
              'res/icons/menu/list-full.svg',
              color: Theme.of(context).primaryColor,
            ),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'res/icons/menu/map.svg',
              color: Theme.of(context).primaryColor,
            ),
            activeIcon: SvgPicture.asset(
              'res/icons/menu/map-full.svg',
              color: Theme.of(context).primaryColor,
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'res/icons/menu/heart.svg',
              color: Theme.of(context).primaryColor,
            ),
            activeIcon: SvgPicture.asset(
              'res/icons/menu/heart-full.svg',
              color: Theme.of(context).primaryColor,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'res/icons/menu/settings.svg',
              color: Theme.of(context).primaryColor,
            ),
            activeIcon: SvgPicture.asset(
              'res/icons/menu/settings-full.svg',
              color: Theme.of(context).primaryColor,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
