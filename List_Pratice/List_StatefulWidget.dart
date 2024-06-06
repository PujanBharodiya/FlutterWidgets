import 'package:flutter/material.dart';
import 'package:project1/CRUDE%20Best/HelperClass/Userfile.dart';

void main() => runApp(List_Stateful());

class List_Stateful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: List_Stateful_Best(),
    );
  }
}
class List_Stateful_Best extends StatefulWidget {
  const List_Stateful_Best({Key? key}) : super(key: key);

  @override
  State<List_Stateful_Best> createState() => _List_Stateful_BestState();
}

class _List_Stateful_BestState extends State<List_Stateful_Best> {

 List<Userdata> userssdata = [];
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userssdata.add(Userdata("Pujan", "@gamil.com"));
    userssdata.add(Userdata("Poojan", "@fuck.com"));
    userssdata.add(Userdata("Pujan Bharodiya", "@bharodiya.com"));
    }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Scaffold(
        appBar: AppBar(title: Text("Fuck Harder"),),
        body:  ListTile(
      leading: Icon(Icons.warning_outlined,color: Colors.red,size: 40,),
      title: Text(userssdata[index].name),
      subtitle: Text(userssdata[index].email_Id),

      ),
      );
    },);
  }
}
