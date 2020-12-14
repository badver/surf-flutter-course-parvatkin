import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/sight_details/sight_details_widgets.dart';
import 'package:places/ui/widgets/work_time.dart';

/// DetailsBody - shows sight details
///
/// [sight] - sight data to display
class DetailsBody extends StatelessWidget {
  const DetailsBody({
    Key key,
    @required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 24,
      ),
      child: Column(
        children: [
          SightName(sight: sight),
          Row(
            children: [
              SightType(sight: sight),
              const SizedBox(width: 16),
              WorkTime(workTime: sight.workTime),
            ],
          ),
          SightDetailsWidget(sight: sight),
          const BuildRouteButton(),
          const SizedBox(height: 24),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              PlanButton(),
              FavoritesButton(),
            ],
          ),
        ],
      ),
    );
  }
}
