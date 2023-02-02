import 'package:flutter/material.dart';

//Agarda biz stateful widgetning statiga access(murojaat) qilishni
//hohlasak global keylardan foydalanamiz

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  final keyCounter = GlobalKey<CounterWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Global key tutorial 1"),
      ),
      body: Center(
        child: CounterWidget(
          key: keyCounter,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          keyCounter.currentState!.increment();
          print("COUNTER CURRENT VALUE:${keyCounter.currentState!.counter}");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  State<CounterWidget> createState() => CounterWidgetState();
}

class CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void increment() {
    setState(() {
      counter += 5;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Text(
      counter.toString(),
      style: const TextStyle(
        fontSize: 40,
        color: Colors.black,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
