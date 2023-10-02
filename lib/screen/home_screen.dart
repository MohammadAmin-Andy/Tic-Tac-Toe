import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screen/aboutus_page.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:tic_tac_toe/screen/game_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void navigatePage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tic Tac Teo',
                    style: TextStyle(
                        color: Colors.red[800],
                        fontSize: 51,
                        fontWeight: FontWeight.bold),
                  ),
                  //SizedBox(height: 3),
                  Text(
                    '(Two player game)',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.red[300], fontSize: 20),
                  ),
                  SizedBox(height: 55),
                  ClipRRect(
                    child: Image.asset('images/s1.png'),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  SizedBox(height: 35),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      //shadowColor: Colors.red,
                      backgroundColor: Colors.red[800],
                      minimumSize: Size(5, 50),
                    ),
                    onPressed: () {
                      navigatePage(
                        context,
                        GameScreen(),
                      );
                    },
                    child: Text(
                      'Start Game',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Colors.blue, style: BorderStyle.solid),
                    ),
                    onPressed: () {
                      navigatePage(
                        context,
                        AboutUs(),
                      );
                    },
                    child: Text(
                      'about us',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
