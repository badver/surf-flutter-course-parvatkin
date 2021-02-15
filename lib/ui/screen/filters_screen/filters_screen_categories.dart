import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/ui/constants.dart';

class FiltersScreenCategories extends StatelessWidget {
  final Set<SightType> activeFilters;
  final void Function(SightType type) onPressed;

  const FiltersScreenCategories({
    Key key,
    @required this.activeFilters,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 16,
          ),
          child: Text(
            AppTexts.categories.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  fontSize: 12,
                  color: Theme.of(context).disabledColor,
                ),
          ),
        ),
        GridView.count(
          crossAxisCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            for (final type in SightType.values)
              SightTypeFilter(
                type: type,
                isSelected: activeFilters.contains(type),
                onPressed: () {
                  onPressed(type);
                },
              ),
          ],
        ),
      ],
    );
  }
}

class SightTypeFilter extends StatelessWidget {
  final SightType type;
  final bool isSelected;
  final VoidCallback onPressed;

  const SightTypeFilter({
    Key key,
    @required this.type,
    @required this.isSelected,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              SizedBox(
                width: 64,
                height: 64,
                child: FlatButton(
                  onPressed: onPressed,
                  shape: const CircleBorder(),
                  color: isSelected ? AppColorsLight.green.withOpacity(0.16) : Colors.transparent,
                  child: SvgPicture.asset(
                    type.details.icon,
                    color: AppColorsLight.green,
                  ),
                ),
              ),
              if (isSelected)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    maxRadius: 8,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: SvgPicture.asset(
                      'res/icons/other/tick.svg',
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            type.details.name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  fontSize: 12,
                  color: Theme.of(context).primaryColor,
                ),
          ),
        ],
      );
}
