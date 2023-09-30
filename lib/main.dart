import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screen/game_screen.dart';
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
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
