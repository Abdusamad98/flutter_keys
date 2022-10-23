import 'package:flutter/material.dart';
import 'package:flutter_keys/widgets/user_widget.dart';

class ObjectKeyExample extends StatefulWidget {
  const ObjectKeyExample({Key? key}) : super(key: key);

  @override
  State<ObjectKeyExample> createState() => _ObjectKeyExampleState();
}

class _ObjectKeyExampleState extends State<ObjectKeyExample> {
  late List<User> users;

  @override
  void initState() {
    super.initState();

    final peter1 = User(
      name: 'Peter Drucker',
      country: 'USA',
    );

    final peter2 = User(
      name: 'Peter Drucker',
      country: 'USA',
    );

    users = [
      User(
        name: 'Sarah Abs',
        country: 'England',
      ),
      User(
        name: 'Peter Drucker',
        country: 'USA',
      ),
      User(
        name: 'Peter Drucker',
        country: 'USA',
      ),

      User(
        name: 'James High',
        country: 'India',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Object Key example"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: List.generate(users.length, (index) {
              var user = users[index];
              return UserWidget(
                //  key: ObjectKey(user),
                user: user,
              );
            }),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.swap_horiz, size: 32),
          onPressed: () => setState(() {
            final user = users.removeAt(0);
            users.insert(1, user);
          }),
        ),
      );
}

class User {
  final String name;
  final String country;

  const User({
    required this.name,
    required this.country,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          country == other.country;

  @override
  int get hashCode => name.hashCode ^ country.hashCode;
}
