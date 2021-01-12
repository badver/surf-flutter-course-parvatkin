import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/util/utils.dart';
import 'package:places/ui/widgets/back_button.dart';

/// DetailsHeader - the header of sight details screen. Shows header.
///
/// [sight] - sight data
class DetailsHeader extends StatelessWidget {
  const DetailsHeader({
    Key key,
    @required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          sight.url,
          fit: BoxFit.cover,
          height: 360,
          loadingBuilder: buildImageLoadingIndicator,
        ),
        const Positioned(
          top: 36,
          left: 16,
          child: AppBackButton(),
        ),
      ],
    );
  }
}
