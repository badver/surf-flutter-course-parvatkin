import 'map_point.dart';

bool arePointsNear(MapPoint center, MapPoint point, double distance) {
  return center.distanceTo(point) <= distance;
}
