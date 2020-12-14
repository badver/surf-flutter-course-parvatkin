import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/util/utils.dart';
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

/// CardSightDetails - a widget to show a sight details
///
/// [details] - details to display
class CardSightDetails extends StatelessWidget {
  const CardSightDetails({
    Key key,
    @required this.details,
  }) : super(key: key);

  final String details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Text(
        details,
        textAlign: TextAlign.start,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.cardDetails,
      ),
    );
  }
}

/// CardSightName - a widget to show a sight name
///
/// [name] - name to display
class CardSightName extends StatelessWidget {
  const CardSightName({
    Key key,
    @required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 2,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 151),
        child: Container(
          padding: const EdgeInsets.only(
            left: 3,
            top: 2,
            right: 9,
          ),
          color: AppColors.gray2,
          child: Text(
            name,
            textAlign: TextAlign.start,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.cardName,
          ),
        ),
      ),
    );
  }
}

/// CardSightHeader - a widget to show a sight card header
///
/// [imageUrl] - image url to display in header
/// [type] - sight type
class CardSightHeader extends StatelessWidget {
  const CardSightHeader({
    Key key,
    @required this.imageUrl,
    @required this.type,
  }) : super(key: key);

  final String imageUrl;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 96,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              color: Colors.amber,
            ),
            loadingBuilder: buildImageLoadingIndicator,
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Text(
            type,
            style: AppTextStyles.cardType,
          ),
        ),
        const Positioned(
          top: 16,
          right: 16,
          child: Placeholder(
            fallbackWidth: 20,
            fallbackHeight: 18,
          ),
        ),
      ],
    );
  }
}
