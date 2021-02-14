import 'dart:math';

class MapPoint {
  final double lng;
  final double lat;

  MapPoint(this.lng, this.lat);

  double distanceTo(MapPoint other) {
    const ky = 40000 / 360;
    final kx = cos(pi * lat / 180.0) * ky;
    final dx = (lng - other.lng).abs() * kx;
    final dy = (lat - other.lat).abs() * ky;
    return sqrt(dx * dx + dy * dy);
  }
}
