import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(
              Icons.home,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          backgroundColor: Colors.blue[300],
          centerTitle: true,
          title: Text(
            'About Developer',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 20),
                Text(
                  'Hi, I am Mohammad Amin,\nthe programmer or developer of this software, which is the first software that I published, is a 2-player tic-tac-toe game. This project is available as an open source on Github.\n\nHope you enjoy!',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    final Uri url = Uri.parse(
                        'https://github.com/MohammadAmin-Andy/Tic-Tac-Toe');
                    launchUrl(url);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/star.png',
                        cacheHeight: 45,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Star to this project on github!!',
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
