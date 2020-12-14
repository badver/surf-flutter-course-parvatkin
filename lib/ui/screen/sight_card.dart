import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/screen/sight_card/card_sight_header.dart';
import 'package:places/ui/screen/sight_card/card_sight_name.dart';
import 'package:places/ui/widgets/work_time.dart';

/// SightCard - a widget to show a sight card
///
/// [sight] - sight data to display
class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({
    Key key,
    @required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Container(
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: AppDecorations.cardDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardSightHeader(
                imageUrl: sight.url,
                type: sight.type,
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
