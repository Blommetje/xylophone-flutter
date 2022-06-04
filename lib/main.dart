import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

void playNote(int soundNumber) {
   {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  };
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          minimum: const EdgeInsets.all(32),
            child: SizedBox(
                width: 80,
              child: Column(
              children: [
            TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.green ),
                  onPressed:() {
                    playNote(1);
                  },
              child: Text('Green',
                style: TextStyle(fontSize: 22),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red ),
              onPressed: () {
                  playNote(2);
                  },
              child: Text('Red',
                style: TextStyle(fontSize: 22),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue ),
              onPressed: () {
                playNote(3);
              },
              child: Text('Blue',
                style: TextStyle(fontSize: 22),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.pink ),
              onPressed: () {
                playNote(4);
              },
              child: Text('Pink',
                style: TextStyle(fontSize: 22),
              ),
            ),

            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent ),
              onPressed: () {
                playNote(5);
              },
              child: Text('Orange',
                style: TextStyle(fontSize: 22),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow ),
              onPressed: () {
                playNote(6);
              },
              child: Text('Yellow',
                style: TextStyle(fontSize: 22),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.purpleAccent ),
              onPressed: () {
                playNote(7);
              },
              child: Text('Purple',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ]),
        ),
      ),
      ),
    );
  }
}
// a comment for a commit try
