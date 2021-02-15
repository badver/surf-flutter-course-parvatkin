import 'package:meta/meta.dart';

import 'map_point.dart';

bool arePointsNear({
  @required MapPoint center,
  @required MapPoint point,
  @required double distanceMin,
  @required double distanceMax,
}) {
  final distance = center.distanceTo(point);
  return distance >= distanceMin && distance <= distanceMax;
}
