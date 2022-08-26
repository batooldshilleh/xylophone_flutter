import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSaund(int nam){
    final player = AudioPlayer();
    player.play(DeviceFileSource('asset/s$nam.mp3'));
  }
  Widget bildKey(int num , Color c){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSaund(num);
        },
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(c)),
        child: Text(' '),
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
              bildKey(1,Colors.red),
              bildKey(2,Colors.orange),
              bildKey(3,Colors.yellowAccent),
              bildKey(4,Colors.green),
              bildKey(5,Colors.teal),
              bildKey(6,Colors.blue),
              bildKey(7,Colors.purple),
            ],
            ),
          ),
        ),
    );
  }
}
