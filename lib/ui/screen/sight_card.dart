import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/constants.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({
    Key key,
    @required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: Container(
        width: double.infinity,
        height: 188,
        clipBehavior: Clip.antiAlias,
        decoration: AppDecorations.cardDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardSightHeader(
              imageUrl: sight.url,
              type: sight.type,
            ),
            CardSightName(name: sight.nameSight),
            CardSightDetails(details: sight.details),
          ],
        ),
      ),
    );
  }
}

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
        top: 16,
        bottom: 2,
      ),
      child: Text(
        name,
        textAlign: TextAlign.start,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.cardName,
      ),
    );
  }
}

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
