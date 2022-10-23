import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
   const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Keys tutorial"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}

//1 we need keys to uniquely identify the widget
// Value key:
// identifies a widget in your application
// sate ni saqlab qoladi
// Objectkey
// Uniquekey
// Globalkey
