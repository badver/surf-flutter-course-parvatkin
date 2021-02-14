import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/screen/filters_screen/filters_screen_button.dart';
import 'package:places/ui/screen/filters_screen/filters_screen_categories.dart';
import 'package:places/ui/screen/filters_screen/filters_screen_slider.dart';

class FiltersScreen extends StatelessWidget {
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
          onPressed: () {},
        ),
        actions: [
          TextButton(
            onPressed: () {},
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
          FiltersScreenCategories(),
          FiltersScreenSlider(),
          const Expanded(
            child: SizedBox(
              height: 1,
            ),
          ),
          FiltersScreenButton(),
        ],
      ),
    );
  }
}
