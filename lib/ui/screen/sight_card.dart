import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/screen/sight_card/sight_card_widgets.dart';
import 'package:places/ui/widgets/work_time.dart';

/// SightCard - a widget to show a sight card
///
/// [sight] - sight data to display
class SightCard extends StatelessWidget {
  final Sight sight;
  final GestureTapCallback onCalendarTap;
  final GestureTapCallback onDeleteTap;
  final GestureTapCallback onHeartTap;
  final GestureTapCallback onShareTap;

  const SightCard({
    Key key,
    @required this.sight,
    this.onCalendarTap,
    this.onDeleteTap,
    this.onHeartTap,
    this.onShareTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1.6,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Container(
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: AppDecorations.cardDecoration.copyWith(
            color: Theme.of(context).backgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardSightHeader(
                imageUrl: sight.url,
                type: sight.type.details.name,
                onCalendarTap: onCalendarTap,
                onDeleteTap: onDeleteTap,
                onHeartTap: onHeartTap,
                onShareTap: onShareTap,
              ),
              const SizedBox(height: 18),
              CardSightName(name: sight.nameSight),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 2,
                ),
                child: WorkTime(workTime: sight.workTime),
              ),
              // CardSightDetails(details: sight.details),
            ],
          ),
        ),
      ),
    );
  }
}
