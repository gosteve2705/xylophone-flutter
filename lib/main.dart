import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Container(
                  width: 100,
                  height: 30,
                  color: Colors.red,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note1.wav');
                },
              ),
              FlatButton(
                child: Container(
                  width: 100,
                  height: 30,
                  color: Colors.deepOrange,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note2.wav');
                },
              ),
              FlatButton(
                child: Container(
                  width: 100,
                  height: 30,
                  color: Colors.yellow,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note3.wav');
                },
              ),
              FlatButton(
                child: Container(
                  width: 100,
                  height: 30,
                  color: Colors.green,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note4.wav');
                },
              ),
              FlatButton(
                child: Container(
                  width: 100,
                  height: 30,
                  color: Colors.blueGrey,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note5.wav');
                },
              ),
              FlatButton(
                child: Container(
                  width: 100,
                  height: 30,
                  color: Colors.blue,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note6.wav');
                },
              ),
              FlatButton(
                child: Container(
                  width: 100,
                  height: 30,
                  color: Colors.purple,
                ),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note7.wav');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
