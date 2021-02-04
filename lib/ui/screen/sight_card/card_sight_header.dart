import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/util/utils.dart';

/// CardSightHeader - a widget to show a sight card header
///
/// [imageUrl] - image url to display in header
/// [type] - sight type
class CardSightHeader extends StatelessWidget {
  final GestureTapCallback onCalendarTap;
  final GestureTapCallback onDeleteTap;
  final GestureTapCallback onHeartTap;
  final GestureTapCallback onShareTap;

  const CardSightHeader({
    Key key,
    @required this.imageUrl,
    @required this.type,
    this.onCalendarTap,
    this.onDeleteTap,
    this.onHeartTap,
    this.onShareTap,
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
        ),
      ],
    );
  }
}

class CardButton extends StatelessWidget {
  const CardButton({
    Key key,
    @required this.svgIconAsset,
    @required this.onTap,
  }) : super(key: key);

  final GestureTapCallback onTap;
  final String svgIconAsset;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: AppDecorations.circleBorder,
        onTap: onTap,
        child: SvgPicture.asset(
          svgIconAsset,
          color: Theme.of(context).textTheme.bodyText1.color,
        ),
      ),
    );
  }
}
