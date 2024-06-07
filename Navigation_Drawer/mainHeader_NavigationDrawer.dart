import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final widgetslist = [];
  var selectedIndex = 0;
  var textStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  void _menuItemClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widgetslist.add(Center(
      child: Text(
        'Home Screen',
        style: textStyle,
      ),
    ),);
    widgetslist.add(Center(
      child: Text(
        'Profile',
        style: textStyle,
      ),
    ),);
    widgetslist.add(Center(
      child: Text(
        'MyBucket',
        style: textStyle,
      ),
    ),);
    widgetslist.add(Center(
      child: Text(
        'Order',
        style: textStyle,
      ),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Header Navigation Drawer',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Header Navigation Drawer'),
        ),
        body: widgetslist[selectedIndex],
        drawer: Drawer(
          child: ListView(
            children: [
              headerDrawer(),
              itemsDrawer(),
            ],
          ),
        ),
      ),
    );
  }

  headerDrawer() {
    return Container(
      height: 250,
      width: double.infinity,
      color: Colors.purple,
      child: Column(
        children: [

          Icon(Icons.alarm,size: 40,color: Colors.white,),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Text("Set The Alarm" , style: TextStyle(fontSize: 16,color: Colors.white),),
          )
        ],
      ),
      


    );
  }

  itemsDrawer() {
  return ListView(


    children: [
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
        onTap: () {
          _menuItemClicked(0);
        },
        selected: selectedIndex == 0,
        selectedColor: Colors.purple,
        selectedTileColor: Colors.pinkAccent.shade200,

      ),
      ListTile(
        leading: Icon(Icons.propane),
        title: Text("Profile"),
        onTap: () {
          _menuItemClicked(1);
        },
        selected: selectedIndex == 1,
      ),
      ListTile(
        leading: Icon(Icons.shopping_cart),
        title: Text("Cart"),
        onTap: () {
          _menuItemClicked(2);
        },
        selected: selectedIndex == 2,
      ),
      ListTile(
        leading: Icon(Icons.shopping_cart),
        title: Text("Order"),
        onTap: () {
          _menuItemClicked(3);
        },
        selected: selectedIndex == 3,
      ),

    ],
  );
  }
}

