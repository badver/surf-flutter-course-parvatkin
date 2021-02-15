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
  RangeValues _rangeValues = const RangeValues(1, 100);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppTexts.distance,
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
              ),
              Text(
                '${AppTexts.rangeFrom} ${_distance(_rangeValues.start)} ${AppTexts.rangeTo} ${_distance(_rangeValues.end)}',
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
              ),
            ],
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            activeTrackColor: AppColorsLight.green,
            inactiveTrackColor: Theme.of(context).disabledColor,
            trackHeight: 2,
            rangeTrackShape: const RectangularRangeSliderTrackShape(),
            rangeThumbShape: const RoundRangeSliderThumbShape(
              enabledThumbRadius: 8,
              elevation: 2,
            ),
            thumbColor: Theme.of(context).cardColor,
          ),
          child: RangeSlider(
            min: 1,
            max: 100,
            divisions: 100,
            onChanged: (RangeValues values) {
              setState(
                () {
                  _rangeValues = RangeValues(
                    _roundDistance(values.start),
                    _roundDistance(values.end),
                  );
                },
              );
            },
            values: _rangeValues,
          ),
        ),
      ],
    );
  }

  String _distance(double dist) {
    return dist <= 10 ? '${dist.round()}00 ${AppTexts.meters}' : '${(dist / 10).round()} ${AppTexts.kilometers}';
  }

  double _roundDistance(double dist) {
    if (dist > 9) {
      return (dist / 10).round() * 10.0;
    }
    return dist;
  }
}
