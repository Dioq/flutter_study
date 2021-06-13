import 'package:flutter/material.dart';

class RotatedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RotatedBox'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            RotatedBox(
              child: Text(
                'ABCDEF',
                style: TextStyle(fontSize: 28),
              ),
              quarterTurns: 0,
            ),
            SizedBox(
              height: 20.0,
            ),
            RotatedBox(
              child: Text(
                'ABCDEF',
                style: TextStyle(fontSize: 28),
              ),
              quarterTurns: 1,
            ),
            SizedBox(
              height: 20.0,
            ),
            RotatedBox(
              child: Text(
                'ABCDEF',
                style: TextStyle(fontSize: 28),
              ),
              quarterTurns: 2,
            ),
            SizedBox(
              height: 20.0,
            ),
            RotatedBox(
              child: Text(
                'ABCDEF',
                style: TextStyle(fontSize: 28),
              ),
              quarterTurns: 3,
            ),
            SizedBox(
              height: 20.0,
            ),
            RotatedBox(
              child: Text(
                'ABCDEF',
                style: TextStyle(fontSize: 28),
              ),
              quarterTurns: 4,
            ),
          ],
        ),
      ),
    );
  }
}
