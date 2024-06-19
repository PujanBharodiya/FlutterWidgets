import 'package:flutter/material.dart';
import 'package:project1/stateManagement/provider/counter.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management',
      home: ChangeNotifierProvider(
        create: (context) => Counter(),
        child: CounterApp(),
      )
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    print("Build Method is Called");
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Example"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Provider.of<Counter>(context,listen: false).decrement();
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 24),
                  )),
              Text(
                "${Provider.of<Counter>(context).count}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<Counter>(context, listen: false).increment();

                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 24),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
