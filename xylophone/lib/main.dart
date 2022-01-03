import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
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
                    final player = AudioCache();
                    player.play("note1.wav");
                  },
                  child: Text("Click me"),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play("note1.wav");
                  },
                  child: Text("Click me"),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play("note1.wav");
                  },
                  child: Text("Click me"),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play("note1.wav");
                  },
                  child: Text("Click me"),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play("note1.wav");
                  },
                  child: Text("Click me"),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play("note1.wav");
                  },
                  child: Text("Click me"),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play("note1.wav");
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
