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
      routes: {"messages": (context) => Homepage()},
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Home page", style: TextStyle(color: Colors.amber)),
      ),
      body: Center(
        child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              "Welcome to Home Page",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Colors.amber.shade900),
            )),
      ),
    );
  }
}
