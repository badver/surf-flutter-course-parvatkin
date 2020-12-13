import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/util/utils.dart';
import 'package:places/ui/widgets/work_time.dart';

/// SightDetails - screen with sight details
///
/// [sight] - sight data to display
class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({
    Key key,
    @required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailsHeader(sight: sight),
            DetailsBody(sight: sight),
          ],
        ),
      ),
    );
  }
}

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

/// SightDetailsWidget - a widget to show a sight details
///
/// [sight] - sight data
class SightDetailsWidget extends StatelessWidget {
  const SightDetailsWidget({
    Key key,
    @required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Text(
        sight.details,
        style: AppTextStyles.sightDetailsDetails,
      ),
    );
  }
}

/// SightType - a widget to show a sight type
///
/// [sight] - sight data
class SightType extends StatelessWidget {
  const SightType({
    Key key,
    @required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Text(
      sight.type,
      style: AppTextStyles.sightDetailsType,
    );
  }
}

/// SightName - a widget to show a sight name
///
/// [sight] - sight data
class SightName extends StatelessWidget {
  const SightName({
    Key key,
    @required this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      child: Text(
        sight.nameSight,
        style: AppTextStyles.sightDetailsName,
      ),
    );
  }
}

/// PlanButton - a button to plan/schedule a visit to a sight
class PlanButton extends StatelessWidget {
  const PlanButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.calendar_today,
        color: AppColors.disabled,
      ),
      label: const Text(
        AppTexts.toPlan,
        style: AppTextStyles.toPlan,
      ),
    );
  }
}

/// FavoritesButton - a button to add to favorites
class FavoritesButton extends StatelessWidget {
  const FavoritesButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.details,
        color: AppColors.black,
      ),
      label: const Text(
        AppTexts.toFavorites,
        style: AppTextStyles.toFavorites,
      ),
    );
  }
}

/// BuildRouteButton - a button to build a route to a sight
class BuildRouteButton extends StatelessWidget {
  const BuildRouteButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {},
      color: AppColors.green,
      height: 48,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      icon: const Icon(
        Icons.input,
        color: AppColors.white,
      ),
      label: const Text(
        AppTexts.buildRoute,
        style: AppTextStyles.buildRouteButton,
      ),
    );
  }
}

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
          child: BackButton(),
        ),
      ],
    );
  }
}

/// BackButton - this is a back button to go back on tap if user want to go back from current screen.
class BackButton extends StatelessWidget {
  const BackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 32,
      child: FlatButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {},
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(Icons.chevron_left),
      ),
    );
  }
}
