import 'package:flutter/material.dart';
import 'package:places/ui/util/utils.dart';

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
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Placeholder(
            color: Theme.of(context).textTheme.bodyText1.color,
            fallbackWidth: 20,
            fallbackHeight: 18,
          ),
        ),
      ],
    );
  }
}
