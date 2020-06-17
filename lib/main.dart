import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xylophone(Colors.red, 1),
              xylophone(Colors.orange, 2),
              xylophone(Colors.yellow, 3),
              xylophone(Colors.green, 4),
              xylophone(Colors.teal, 5),
              xylophone(Colors.blue, 6),
              xylophone(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

Widget xylophone(Color color, int sound) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play('note$sound.wav');
      },
      child: (null),
    ),
  );
}
