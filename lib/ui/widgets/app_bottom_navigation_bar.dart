import 'package:flutter/material.dart';

/// BottomNavigationBar
/// [selected] - index of selected tab
class AppBottomNavigationBar extends StatelessWidget {
  final int selected;

  const AppBottomNavigationBar({
    Key key,
    @required this.selected,
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
      ),
    );
  }
}
