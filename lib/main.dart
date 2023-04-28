import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {
  int stateCount = 0;

  int _eatInCount = 0;
  int _deliveryCount = 0;
  int _eatOutCount = 0;

  void _eatInCounter() {
    setState(() {
      _eatInCount++;
      stateCount++;
    });
  }

  void _deliveryCounter() {
    setState(() {
      _deliveryCount++;
      stateCount = 0;
    });
  }

  void _eatOutCounter() {
    setState(() {
      _eatOutCount++;
      stateCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: _eatInCounter, child: Text('집밥')),
          ElevatedButton(onPressed: _deliveryCounter, child: Text('배달')),
          ElevatedButton(onPressed: _eatOutCounter, child: Text('외식')),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              '배달 없는 생활 $stateCount일 째',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
