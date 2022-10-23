import 'package:flutter/material.dart';

class ValueKeyExample2 extends StatefulWidget {
  const ValueKeyExample2({Key? key}) : super(key: key);

  @override
  State<ValueKeyExample2> createState() => _ValueKeyExample2State();
}

class _ValueKeyExample2State extends State<ValueKeyExample2> {
  var users = [
    User(name: "Jack", icon: Icons.access_time_outlined),
    User(name: "Jack", icon: Icons.access_alarm_rounded),
    User(name: "Tom", icon: Icons.ac_unit_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Value keys tutorial"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: ReorderableListView.builder(
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  key: ValueKey(user.name),
                  leading: Icon(user.icon),
                  title: Text(user.name),
                );
              },
              itemCount: users.length,
              onReorder: (oldIndex, newIndex) {
                setState(() {
                  final index = newIndex > oldIndex ? newIndex - 1 : newIndex;
                  final user = users.removeAt(oldIndex);
                  users.insert(index, user);
                });
              }),
        ),
      ),
    );
  }
}

class User {
  User({
    required this.name,
    required this.icon,
  });

  final IconData icon;
  final String name;
}
