import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DumpPage(),
      ),
    );
  }
}

class DumpPage extends StatelessWidget {
  final player = AudioPlayer();
  void SoundPlay(String PathName)
  {
    player.play(AssetSource(PathName+'.wav'));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('bongo',Colors.blueAccent),
                  ),
                  Expanded(
                    child: buildDrumPad('bip',Colors.redAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('clap1',Colors.amberAccent),

                  ),
                  Expanded(
                    child: buildDrumPad('clap2',Colors.cyanAccent),

                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('clap3',Colors.red),

                  ),
                  Expanded(
                    child: buildDrumPad('crash',Colors.blue),

                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('how',Colors.deepOrange),

                  ),
                  Expanded(
                    child: buildDrumPad('oobah',Colors.grey),

                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('ridebel',Colors.pink),

                  ),
                  Expanded(
                    child: buildDrumPad('woo',Colors.brown),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildDrumPad(String Sound,Color myColor) {
    return TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(8),
                    ),
                    onPressed: () {
                      SoundPlay(Sound);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      color: myColor,
                    ),
                  );
  }
}
