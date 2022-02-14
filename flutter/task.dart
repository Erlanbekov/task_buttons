import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String random = Random().nextInt(100).toString();
  bool ran = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: ran ? Colors.orange : Colors.red,
          ),
          height: 170,
          
          width: 170,
          child: Center(
            child: Text(
              random,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            random = Random().nextInt(100).toString();
            ran = !ran;
            print(random);
            debugPrint('Click me');
          });
        },
        child: const Icon(Icons.replay_outlined),
      ),
    ));
  }
}
