import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';

class WorkTime extends StatelessWidget {
  final String workTime;

  const WorkTime({
    Key key,
    @required this.workTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      workTime,
      style: AppTextStyles.workTime,
    );
  }
}
