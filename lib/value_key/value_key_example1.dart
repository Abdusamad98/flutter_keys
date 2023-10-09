import 'package:flutter/material.dart';

class ValueKeyExample1 extends StatefulWidget {
  const ValueKeyExample1({Key? key}) : super(key: key);

  @override
  State<ValueKeyExample1> createState() => _ValueKeyExample1State();
}

class _ValueKeyExample1State extends State<ValueKeyExample1> {
  bool showEmail = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Value keys tutorial"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              if (showEmail)
                TextField(
                 key: ValueKey(1),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                ),
              TextField(
               key: ValueKey(2),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                ),
              ),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showEmail = !showEmail;
          });
        },
      ),
    );
  }
}

class UserModel {
  UserModel({required this.age});

  final int age;

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is UserModel && age == other.age;
  }

  @override
  int get hashCode => age.hashCode;
}

var instance1 = UserModel(age: 10);
var instance2 = UserModel(age: 10);

bool isEqual = instance1 == instance2;
