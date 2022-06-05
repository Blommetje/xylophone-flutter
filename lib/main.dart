import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

void playNote(int soundNumber) {
  {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}

Expanded buildKey({color, soundNumber}) {
return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(backgroundColor: color),
      onPressed: () {
        playNote(soundNumber);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              buildKey(color: Colors.purpleAccent, soundNumber: 1),
              buildKey(color: Colors.deepOrange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.pinkAccent, soundNumber: 4),
              buildKey(color: Colors.purple, soundNumber: 5),
              buildKey(color: Colors.green, soundNumber: 6),
              buildKey(color: Colors.lightBlueAccent, soundNumber: 7),
           ]),

        ),
      ),
    );
  }
}
// a comment for a commit try
