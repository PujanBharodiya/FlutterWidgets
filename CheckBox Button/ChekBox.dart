import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
bool Ischecked = false;
bool Ischecked2 = false;
class _MyAppState extends State<MyApp> {
  void checkbox(bool? value){
    setState(() {
      Ischecked = value!;
    });
  }
  void checkbox2(bool? value){
    setState(() {
      Ischecked2 = value!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CheckBox Button'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(value: Ischecked , onChanged: (value) => checkbox(value), title: Text("Terms and Condition"),),
            CheckboxListTile(value: Ischecked2, onChanged: (value) => checkbox2(value),title: Text("Terms and Condition2"),),
          ],
        )
      ),
    );
  }
}
