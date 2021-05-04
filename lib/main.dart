import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnum) {
    final player = AudioCache();
    player.play('note$soundnum.wav');
  }

  Widget buildkey(int coloind, int soundnum) {
    List<Color> colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.teal,
      Colors.blue,
      Colors.purple,
    ];
    return Expanded(
      child: FlatButton(
        color: colors[coloind],
        onPressed: () {
          playsound(soundnum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Feel like using a real Piano :)'),centerTitle: true,),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(0, 1),
                buildkey(1, 2),
                buildkey(2, 3),
                buildkey(3, 4),
                buildkey(4, 5),
                buildkey(5, 6),
                buildkey(6, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
