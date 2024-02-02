import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/custom_widget.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.orangeAccent, sound: 'note2.wav'),
    TuneModel(color: Colors.green, sound: 'note3.wav'),
    TuneModel(color: Colors.yellowAccent, sound: 'note4.wav'),
    TuneModel(color: Colors.blue, sound: 'note5.wav'),
    TuneModel(color: Colors.pink, sound: 'note6.wav'),
    TuneModel(color: Colors.cyanAccent, sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff253138),
        elevation: 0,
        title: const Text("Flutter Tune"),
        centerTitle: true,
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }
}
