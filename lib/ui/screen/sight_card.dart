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
          child: Stack(
            children: [
              Positioned.fill(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardSightHeader(
                      imageUrl: sight.url,
                      type: sight.type.details.name,
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
              Positioned.fill(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () {
                      debugPrint('Card tapped');
                    },
                  ),
                ),
              ),
              ActionButtons(
                onHeartTap: onHeartTap,
                onCalendarTap: onCalendarTap,
                onShareTap: onShareTap,
                onDeleteTap: onDeleteTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    Key key,
    @required this.onHeartTap,
    @required this.onCalendarTap,
    @required this.onShareTap,
    @required this.onDeleteTap,
  }) : super(key: key);

  final GestureTapCallback onHeartTap;
  final GestureTapCallback onCalendarTap;
  final GestureTapCallback onShareTap;
  final GestureTapCallback onDeleteTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      right: 16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (onHeartTap != null)
            CardButton(
              onTap: onHeartTap,
              svgIconAsset: 'res/icons/menu/heart.svg',
            ),
          if (onCalendarTap != null)
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
              ),
              child: CardButton(
                onTap: onCalendarTap,
                svgIconAsset: 'res/icons/other/calendar.svg',
              ),
            ),
          if (onShareTap != null)
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
              ),
              child: CardButton(
                onTap: onShareTap,
                svgIconAsset: 'res/icons/other/share.svg',
              ),
            ),
          if (onDeleteTap != null)
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
              ),
              child: CardButton(
                onTap: onDeleteTap,
                svgIconAsset: 'res/icons/other/close.svg',
              ),
            ),
        ],
      ),
    );
  }
}
