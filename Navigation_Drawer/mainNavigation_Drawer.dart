import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation Drawer'),
        ),
        body: Center(
          child: Container(
            child: Text('Navigation Drawer Best'),
          ),
        ),
        drawer: Drawer(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 05),
            child: ListView(
              children: [
                ExpansionTile(title: Text("Advanced Feature"),
                    childrenPadding: EdgeInsets.symmetric(horizontal: 05) ,
                    children: [
                  ListTile(
                    title: Text("Settings"),
                  ),
                  ListTile(
                    title: Text("Running Status"),
                  )
                ]),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),

                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),

                ),
                ListTile(
                  leading: Icon(Icons.local_shipping),
                  title: Text("Shopping"),

                ),
                ListTile(
                  leading: Icon(Icons.bookmark_border),
                  title: Text("Order"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
