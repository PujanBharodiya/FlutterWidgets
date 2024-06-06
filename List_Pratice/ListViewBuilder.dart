import 'package:flutter/material.dart';

void main() => runApp(ListViewBuilder());

class ListViewBuilder extends StatelessWidget {
  var colorlist = [Colors.green,Colors.greenAccent,Colors.deepOrangeAccent,Colors.red,Colors.tealAccent,];
  var values = ['A','B','C','D','E'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View Builder Best'),
        ),
        body: ListView.builder(itemCount: 5,
          itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8),
            height: 100,
            width: 411,
            color: colorlist[index],
            child:  Text(values[index],style: TextStyle(fontSize: 25),),
            
            
          );
        },)
      ),
    );
  }
}
