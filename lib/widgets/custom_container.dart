import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.bgColor,
    required this.notaNomer,
  });
  final Color bgColor;
  final String notaNomer;

  @override
  Widget build(BuildContext context) {
    final AudioPlayer audioPlayer = AudioPlayer();
    return Expanded(
      child: Container(
        height: 60,
        color: bgColor,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.greenAccent,
            onTap: () {
              audioPlayer.play(
                AssetSource('note$notaNomer.wav'),
              );
            },
          ),
        ),
      ),
    );
  }
}
