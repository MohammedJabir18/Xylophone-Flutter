import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

Expanded textBtn(color){
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
              textBtn(Colors.red[700]),
              textBtn(Colors.orange[700]),
              textBtn(Colors.yellow[700]),
              textBtn(Colors.green[600]),
              textBtn(Colors.blue[700]),
              textBtn(Colors.indigo[700]),
              textBtn(Colors.purple[700]),
            ],
          ),),
      ),
    );
  }
}