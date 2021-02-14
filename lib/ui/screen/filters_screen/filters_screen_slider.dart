import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';

class FiltersScreenSlider extends StatefulWidget {
  const FiltersScreenSlider({
    Key key,
  }) : super(key: key);

  @override
  _FiltersScreenSliderState createState() => _FiltersScreenSliderState();
}

class _FiltersScreenSliderState extends State<FiltersScreenSlider> {
  RangeValues _rangeValues = const RangeValues(100, 10000);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(AppTexts.distance),
            Text(
                '${AppTexts.rangeFrom} ${_distance(_rangeValues.start)} ${AppTexts.rangeTo} ${_distance(_rangeValues.end)}'),
          ],
        ),
        SliderTheme(
          data: SliderThemeData(
            activeTrackColor: AppColorsLight.green,
            inactiveTrackColor: Theme.of(context).disabledColor,
            trackHeight: 2,
            thumbColor: Theme.of(context).cardColor,
          ),
          child: RangeSlider(
            min: 100,
            max: 10000,
            divisions: 100,
            onChanged: (RangeValues values) {
              setState(() {
                _rangeValues = RangeValues(
                  _roundDistance(values.start),
                  _roundDistance(values.end),
                );
              });
            },
            values: _rangeValues,
          ),
        ),
      ],
    );
  }

  String _distance(double dist) {
    return dist < 1000 ? '${_roundDistance(dist)} ${AppTexts.meters}' : '${dist / 1000} ${AppTexts.kilometers}';
  }

  double _roundDistance(double dist) {
    return (dist / 100).roundToDouble() * 100;
  }
}
