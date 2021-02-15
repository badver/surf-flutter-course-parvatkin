import 'package:meta/meta.dart';
import 'package:places/domain/sight_type.dart';

export 'package:places/domain/sight_type.dart';

@immutable
class Sight {
  final String nameSight;
  final double lan;
  final double lon;
  final String url;
  final String details;
  final SightType type;
  final String workTime;

  const Sight({
    @required this.nameSight,
    @required this.lan,
    @required this.lon,
    @required this.url,
    @required this.details,
    @required this.type,
    @required this.workTime,
  });
}
