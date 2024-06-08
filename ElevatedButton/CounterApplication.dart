import 'package:flutter/material.dart';

void main() => runApp(ElevatedButtonPratice());

class ElevatedButtonPratice extends StatefulWidget {

  @override
  State<ElevatedButtonPratice> createState() => _ElevatedButtonPraticeState();
}

class _ElevatedButtonPraticeState extends State<ElevatedButtonPratice> {
  int Counter = 0;

  void increment(){
    setState(() {
      Counter++;
    });
  }
  void decrement(){
    setState(() {
      Counter--;
    });
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ElevatedButtonPratice'),
        ),
        body: Center(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  increment();
                }, child: Icon(Icons.add)),
                SizedBox(width: 10,),
                Text("$Counter", style: TextStyle(fontSize: 25),),
                SizedBox(width: 10,),

                ElevatedButton(onPressed: () {
                  decrement();
                }, child: Icon(Icons.minimize_outlined)),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
