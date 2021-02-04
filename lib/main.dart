import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x1jobs/Fragments/homePage.dart';
import 'dart:math' as math;
import 'navigationDrawer.dart';
import 'package:x1jobs/Fragments/accountSetting.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _changeColor() {
    if (FavouriteColor == Colors.grey) {
      setState(() {
        FavouriteColor = Colors.red;
      });
    } else {
      setState(() {
        FavouriteColor = Colors.grey;
      });
    }
  }

  Color FavouriteColor = Colors.grey;
  //This is to open and close the navigation bar on the left

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => homePage(),
        '/accountSetting': (context) => accountSetting(),
      },
    );
  }
}
