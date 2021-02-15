import 'package:flutter/material.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/screen/filters_screen/filters_screen_button.dart';
import 'package:places/ui/screen/filters_screen/filters_screen_categories.dart';
import 'package:places/ui/screen/filters_screen/filters_screen_slider.dart';

class FiltersScreen extends StatefulWidget {
  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  final activeFilters = <SightType>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          color: Theme.of(context).primaryColor,
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
          onPressed: () {
            debugPrint('Go back');
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                activeFilters.clear();
              });
            },
            child: Text(
              AppTexts.clear,
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                    color:
                        Theme.of(context).brightness == Brightness.light ? AppColorsLight.green : AppColorsDark.green,
                  ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          FiltersScreenCategories(
            activeFilters: activeFilters,
            onPressed: (type) {
              setState(
                () {
                  if (activeFilters.contains(type)) {
                    activeFilters.remove(type);
                  } else {
                    activeFilters.add(type);
                  }
                },
              );
            },
          ),
          const FiltersScreenSlider(),
          const Expanded(
            child: SizedBox(),
          ),
          const FiltersScreenButton(),
        ],
      ),
    );
  }
}
