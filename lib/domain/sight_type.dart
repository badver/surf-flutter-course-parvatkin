import 'package:places/ui/constants.dart';

enum SightType {
  cafe,
  hotel,
  museum,
  park,
  particularPlace,
  restaurant,
}

extension SightTypeExtension on SightType {
  SightTypeDetails get details {
    switch (this) {
      case SightType.cafe:
        return SightTypeDetails.cafe();
      case SightType.hotel:
        return SightTypeDetails.hotel();
      case SightType.museum:
        return SightTypeDetails.museum();
      case SightType.park:
        return SightTypeDetails.park();
      case SightType.particularPlace:
        return SightTypeDetails.particularPlace();
      case SightType.restaurant:
        return SightTypeDetails.restaurant();
      default:
        throw Exception('Unknown SightType');
    }
  }
}

class SightTypeDetails {
  final String icon;
  final String name;

  SightTypeDetails._(this.icon, this.name);

  // predefined types
  factory SightTypeDetails.cafe() => SightTypeDetails._(
        'res/icons/places/cafe.svg',
        AppTexts.cafe,
      );
  factory SightTypeDetails.hotel() => SightTypeDetails._(
        'res/icons/places/hotel.svg',
        AppTexts.hotel,
      );
  factory SightTypeDetails.museum() => SightTypeDetails._(
        'res/icons/places/museum.svg',
        AppTexts.museum,
      );
  factory SightTypeDetails.park() => SightTypeDetails._(
        'res/icons/places/park.svg',
        AppTexts.park,
      );
  factory SightTypeDetails.particularPlace() => SightTypeDetails._(
        'res/icons/places/particular-place.svg',
        AppTexts.particularPlace,
      );
  factory SightTypeDetails.restaurant() => SightTypeDetails._(
        'res/icons/places/restaurant.svg',
        AppTexts.restaurant,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SightTypeDetails && runtimeType == other.runtimeType && icon == other.icon && name == other.name;

  @override
  int get hashCode => icon.hashCode ^ name.hashCode;
}
