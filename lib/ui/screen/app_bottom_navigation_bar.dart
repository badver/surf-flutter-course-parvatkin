import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int selected;

  const AppBottomNavigationBar({
    Key key,
    @required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: selected,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
      ],
    );
  }
}
