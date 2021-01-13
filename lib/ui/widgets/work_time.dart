import 'package:flutter/material.dart';

/// WorkTime shows [workTime] string
class WorkTime extends StatelessWidget {
  final String workTime;

  const WorkTime({
    Key key,
    @required this.workTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        workTime,
        style: Theme.of(context).textTheme.bodyText2.copyWith(
              color: Theme.of(context).secondaryHeaderColor,
            ),
      );
}
