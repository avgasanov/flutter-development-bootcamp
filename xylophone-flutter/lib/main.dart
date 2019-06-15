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
              buildNoteButton(1, Colors.red),
              buildNoteButton(2, Colors.blue),
              buildNoteButton(3, Colors.green),
              buildNoteButton(4, Colors.lightGreenAccent),
              buildNoteButton(5, Colors.deepOrange),
              buildNoteButton(6, Colors.indigoAccent),
              buildNoteButton(7, Colors.pink),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildNoteButton(int noteNumber, Color noteColor) {
    return Expanded(
      child: FlatButton(
        color: noteColor,
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNumber.wav');
        },
      ),
    );
  }
}
