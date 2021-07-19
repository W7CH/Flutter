import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:xylophone/home.dart';

void main() => runApp(HomeScreen());

class XylophoneApp extends StatelessWidget {
  List<Color> randomColor = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Widget buildExpand(int order) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: randomColor[order - 1]),
        onPressed: () {
          playSound(order);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Bring all your skills to light!',
            style: TextStyle(
              fontFamily: 'Festive',
              fontSize: 26,
            ),
          ),
          backgroundColor: Colors.white30,
          leading: InkWell(
            child: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          /*ElevatedButton(
            //style: ElevatedButton.styleFrom(primary: ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),*/
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (var i = 1; i < 8; i++) buildExpand(i),
            ],
          ),
        ),
      ),
    );
  }
}
