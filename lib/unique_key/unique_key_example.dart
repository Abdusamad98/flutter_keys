import 'package:flutter/material.dart';
import 'package:flutter_keys/widgets/color_state_widget.dart';

//Umuman olgan keylar widgetni joriy vaziyatini saqlab qolishda ishlatiladi
//Ikkita bir xil widget kelib qolsa ularni flutter shunchaki farqlay olmaydi
//bunday vaziyatda biz Unique key berishimiz kk
//UniqeKey va ValueKeyni bir biridan farqi Value key ga doim o'zimiz qiymat berishimiz kerak



class UniqueKeyExample extends StatefulWidget {
  const UniqueKeyExample({Key? key}) : super(key: key);

  @override
  State<UniqueKeyExample> createState() => _UniqueKeyExampleState();
}

class _UniqueKeyExampleState extends State<UniqueKeyExample> {
  late List<Widget> children;

  @override
  void initState() {
    super.initState();
    children =  [
      ColorStateWidget(text: '2'),
      ColorStateWidget(text: '1'),
    ];
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Unique Key tutorial"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.swap_horiz, size: 32),
          onPressed: () => setState(() {
            final child = children.removeAt(0);
            children.insert(1, child);
          }),
        ),
      );
}
