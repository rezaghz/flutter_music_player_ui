import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_player/pages/single_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Player",
      home: Scaffold(
        body: SinglePlayer(),
      ),
    );
  }
}
