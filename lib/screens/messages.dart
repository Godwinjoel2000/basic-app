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
class messagepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade400,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Messages", style: TextStyle(color: Colors.pink)),
      ),
      body: Container(
        alignment: Alignment.center,

        child: Image.network(
          "http://cdn.onlinewebfonts.com/svg/img_156439.png",
          fit: BoxFit.fill,
          height: 300,
          width: 300,
        ),

        // "",
        // style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     color: Colors.amber.shade900),
        //
        //),

        //),
      ),
    );
  }
}
