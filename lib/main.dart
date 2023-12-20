import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(MyApp());
}

Expanded textBtn(color, int play){
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: color,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.zero
        )
      ),
      onPressed: (){
        final player = AudioPlayer();
        player.play(AssetSource('piano_$play.wav'));      
      }, 
      child: Text('')
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              textBtn(Colors.red[700], 1),
              textBtn(Colors.orange[700], 2),
              textBtn(Colors.yellow[700], 3),
              textBtn(Colors.green[600], 4),
              textBtn(Colors.blue[700], 5),
              textBtn(Colors.indigo[700], 6),
              textBtn(Colors.purple[700], 7),
            ],
          ),),
      ),
    );
  }
}