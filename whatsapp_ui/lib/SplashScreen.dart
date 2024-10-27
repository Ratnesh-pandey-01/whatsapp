import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/homePage.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 230, left: 110),
          child: Image.network(
              "https://tse3.mm.bing.net/th?id=OIP.PbBfQPm_v6SBjl-EE1msGAHaHs&pid=Api&P=0&h=180"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200, left: 100),
          child: Text("from"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 100),
          child: Text(
            "FACEBOOK",
            style: TextStyle(color: Colors.green, fontSize: 20),
          ),
        )
      ]),
    );
  }
}
