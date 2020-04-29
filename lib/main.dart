import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded createKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createKey(soundNumber: 1, color: Colors.red),
              createKey(soundNumber: 2, color: Colors.orange),
              createKey(soundNumber: 3, color: Colors.yellow),
              createKey(soundNumber: 4, color: Colors.green),
              createKey(soundNumber: 5, color: Colors.teal),
              createKey(soundNumber: 6:, color: Colors.blue),
              createKey(soundNumber: 7, color: Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
