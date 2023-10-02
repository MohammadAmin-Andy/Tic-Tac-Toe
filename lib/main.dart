import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screen/home_screen.dart';

void main() {
  runApp(
    Application(),
  );
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Modern'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
