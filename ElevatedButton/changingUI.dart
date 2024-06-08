import 'package:flutter/material.dart';

void main() => runApp(ChaingingUI());

class ChaingingUI  extends StatefulWidget {
  @override
  State<ChaingingUI> createState() => _ChaingingUIState();
}

class _ChaingingUIState extends State<ChaingingUI> {
  var onScreenText = "That Is PurpleAccent Color Container ";

   var conProperties = Colors.purpleAccent;

   void changeText() {
     setState(() {
       onScreenText = "Using ElevatedButton For Changing The Text";
     });
   }
  void chnageColor(){
     setState(() {
       conProperties  = Colors.greenAccent;
     });
  }


@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ChaingingUI'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: conProperties,
            ),
            SizedBox(height: 15,),
            Text("$onScreenText", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
        ElevatedButton(onPressed: () {
          chnageColor();
          changeText();
        }, child: Text("Click Here To Chnage The All Properties")),

          ],
        )
      ),
    );
  }
}
