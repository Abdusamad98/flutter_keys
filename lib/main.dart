import 'package:flutter/material.dart';
import 'package:flutter_keys/global_key/second_page.dart';
import 'package:flutter_keys/global_key/first_page.dart';
import 'package:flutter_keys/global_key/third_page.dart';
import 'package:flutter_keys/my_home_page.dart';
import 'package:flutter_keys/object_key/object_key_example.dart';
import 'package:flutter_keys/unique_key/unique_key_example.dart';
import 'package:flutter_keys/value_key/value_key_example1.dart';
import 'package:flutter_keys/value_key/value_key_example2.dart';

void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ThirdPage(),
    );
  }
}
