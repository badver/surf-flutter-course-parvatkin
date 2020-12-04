import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/constants.dart';

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
            Stack(
              children: [
                Image.network(
                  sight.url,
                  fit: BoxFit.cover,
                  height: 360,
                ),
                const Positioned(
                  top: 36,
                  left: 16,
                  child: BackButton(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: double.infinity,
                    ),
                    child: Text(
                      sight.nameSight,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        sight.type,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const WorkTime(workTime: 'закрыто до 09:00'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      sight.details,
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  FlatButton.icon(
                    onPressed: () {},
                    color: AppColors.green,
                    height: 48,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    icon: const Icon(
                      Icons.input,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'ПОСТРОИТЬ МАРШРУТ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlatButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.calendar_today,
                          color: Color(0xAA7C7E92),
                        ),
                        label: const Text(
                          'Запланировать',
                          style: TextStyle(
                            color: Color(0xAA7C7E92),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      FlatButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.details,
                          color: AppColors.black,
                        ),
                        label: const Text('В Избранное',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
      style: const TextStyle(
        fontSize: 14,
        color: Color(0xFF7C7E92),
      ),
    );
  }
}

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
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(Icons.chevron_left),
      ),
    );
  }
}
