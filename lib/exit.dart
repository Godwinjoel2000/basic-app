import 'package:flutter/material.dart';
import 'package:menu2/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MENU DEMO',
      theme: ThemeData(
          //primarySwatch: Colors.blue,
          ),
      home: MyHomePage(title: ''),
    );
  }
}

// ignore: camel_case_types
class exitpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Exit", style: TextStyle(color: Colors.amber)),
      ),
      body: Center(
        child: Text(
          "NO EXIT",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
        ),
      ),
      //floatingActionButton: exitpage(),
    );
    // ignore: dead_code
  }
}
