import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  SightListScreen({Key key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 128,
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Color(0xFF3B3E5B),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'С',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              TextSpan(
                text: 'писок\n',
              ),
              TextSpan(
                text: 'и',
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
              TextSpan(
                text: 'нтересных мест',
              ),
            ],
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
