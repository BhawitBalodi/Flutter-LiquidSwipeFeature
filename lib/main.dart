//import 'dart:js';

import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
//import 'package:liquid_swipe/Constants/Helpers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const TextStyle goldcoinGreyStyle = TextStyle(
      color: Colors.grey,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle goldCoinWhiteStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle greyStyle =
      TextStyle(fontSize: 40.0, color: Colors.grey, fontFamily: "Product Sans");
        static const TextStyle whiteStyle =
      TextStyle(fontSize: 40.0, color: Colors.white, fontFamily: "Product Sans");

  static const TextStyle boldStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.black,
    fontFamily: "Product Sans",
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  static const TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );
  static const TextStyle descriptionBlackStyle = TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  final pages = [
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "    ",
                  style: goldcoinGreyStyle,
                ),
                Text(
                  "Skip",
                  style: goldcoinGreyStyle,
                ),
              ],
            ),
          ),
          Image.asset("images/unnamed.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Smoothej",
                  style: greyStyle,
                ),
                Text(
                  "Application",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "   ",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Colors.purple[400],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "    ",
                  style: goldCoinWhiteStyle,
                ),
                Text(
                  "Skip",
                  style: goldCoinWhiteStyle,
                ),
              ],
            ),
          ),
          Image.asset("images/unnamed.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Smoothej",
                  style: whiteStyle,
                ),
                Text(
                  "Application",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "An\n"
                  "Ecommerce\n"
                  "Application",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
     Container(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "  ",
                  style: goldCoinWhiteStyle,
                ),
                Text(
                  "Skip",
                  style: goldCoinWhiteStyle,
                ),
              ],
            ),
          ),
          Image.asset("images/unnamed.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Why",
                  style: whiteStyle,
                ),
                Text(
                  "This?",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "This focus on great UI UX.\n"
                  "From here you will know the importance of UIUX in an application.",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Colors.green[400],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "  ",
                  style: goldCoinWhiteStyle,
                ),
                Text(
                  "Next",
                  style: goldCoinWhiteStyle,
                ),
              ],
            ),
          ),
          Image.asset("images/unnamed.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "This app is made with help of",
                  style: whiteStyle,
                ),
                Text(
                  "Flutter & Dart",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Made By: \n"
                  "1. Samit\n"
                  "2. Bhawit\n"
                  "3. Martin",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          fullTransitionValue: 700,
          enableSideReveal: false,
          slideIconWidget: Icon(Icons.arrow_back),
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.8,
        ),
      ),
    );
  }
}