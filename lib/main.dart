import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  Expanded ButtonPlay({int ButtonNumber, Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          PlaySound(ButtonNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
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
            children: [
              ButtonPlay(color: Colors.teal, ButtonNumber: 1), //button1
              SizedBox(height: 8.0),
              ButtonPlay(color: Colors.purple, ButtonNumber: 2), //button2
              SizedBox(height: 8.0),
              ButtonPlay(color: Colors.blue, ButtonNumber: 3), //button3
              SizedBox(height: 8.0),
              ButtonPlay(color: Colors.green, ButtonNumber: 4), //button4
              SizedBox(height: 8.0),
              ButtonPlay(color: Colors.yellow, ButtonNumber: 5), //button5
              SizedBox(height: 8.0),
              ButtonPlay(color: Colors.orange, ButtonNumber: 6), //button6
              SizedBox(height: 8.0),
              ButtonPlay(color: Colors.red, ButtonNumber: 7), //button7
            ],
          ),
        ),
      ),
    );
  }
}
