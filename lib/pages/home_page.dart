import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone_app_bt/widgets/custom_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Xylophone',
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: const [
          CustomContainer(bgColor: Colors.pink, notaNomer: '1'),
          CustomContainer(bgColor: Colors.blue, notaNomer: '2'),
          CustomContainer(bgColor: Colors.purple, notaNomer: '3'),
          CustomContainer(bgColor: Colors.brown, notaNomer: '4'),
          CustomContainer(bgColor: Colors.yellow, notaNomer: '5'),
          CustomContainer(bgColor: Colors.indigo, notaNomer: '6'),
          CustomContainer(bgColor: Colors.green, notaNomer: '7'),
        ],
      ),
    );
  }
}
