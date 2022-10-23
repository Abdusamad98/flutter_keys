import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Key tutorial 2"),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Name",
              ),
              validator: (value) =>
                  value != null && value.isEmpty ? "Enter a valid name" : null,
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
              validator: (value) =>
                  value != null && value.isEmpty && !value.contains('@')
                      ? "Enter a valid email"
                      : null,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  var form = formKey.currentState!;
                  if (form.validate()) {
                    debugPrint("Form is valid");
                  } else {
                    debugPrint("Form is not valid");
                  }
                },
                child: const Text("SUBMIT"))
          ],
        ),
      ),
    );
  }
}
