import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void playSound(int soundName) {
    final player = AudioCache();
    player.play("note1.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text("Click me"),
                ),
                TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text("Click me"),
                ),
                TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text("Click me"),
                ),
                TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text("Click me"),
                ),
                TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  child: Text("Click me"),
                ),
                TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text("Click me"),
                ),
                TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text("Click me"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
