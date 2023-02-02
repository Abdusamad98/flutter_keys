import 'package:flutter/material.dart';
import 'package:flutter_keys/global_key/first_page.dart';
import 'package:flutter_keys/widgets/color_state_widget.dart';




class ThirdPage extends StatefulWidget {
  ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final containerKey = GlobalKey<MyCustomContainerState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Third example!"),
        ),
        body: Column(
          children: [
            MyCustomContainer(
              key: containerKey,
            ),
            ElevatedButton(
                onPressed: () {
                  var state = containerKey.currentState!;
                  setState(() {
                    state.color = generateColor();
                  });
                },
                child: Text("Button"))
          ],
        ));
  }
}




class MyCustomContainer extends StatefulWidget {
  const MyCustomContainer({Key? key}) : super(key: key);

  @override
  State<MyCustomContainer> createState() => MyCustomContainerState();
}
class MyCustomContainerState extends State<MyCustomContainer> {
  Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: color,
      width: 200,
      height: 200,
    ));
  }
}

