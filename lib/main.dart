// ignore_for_file: prefer_const_constructors, avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('Dice Roller'),
          ),
          body: DicePage()),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceNumber = 6;
  int rightdiceNumber = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Expanded(
              // ignore: deprecated_member_use
              child: FlatButton(
                  onPressed: () => setState(() {
                        leftdiceNumber = Random().nextInt(6) + 1;
                      }),
                  child: Image.asset('images/$leftdiceNumber - Copy.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () => setState(() {
                        rightdiceNumber = Random().nextInt(6) + 1;
                      }),
                  child: Image.asset('images/$rightdiceNumber - Copy.png')))
        ],
      ),
    );
  }
}
