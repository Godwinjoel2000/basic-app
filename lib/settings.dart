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
class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Settings", style: TextStyle(color: Colors.amber)),
      ),
      body: Center(
        //child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            setting(text1: "WIFI", text2: "wireless settings"),
            setting(text1: "WIFI", text2: "wireless settings"),
            setting(text1: "WIFI", text2: "wireless settings"),
            setting(text1: "WIFI", text2: "wireless settings"),
            setting(text1: "WIFI", text2: "wireless settings"),
          ],
        ),
      ),
      //)
      // body: Center(
      //   child: Text(
      //"on progress",
      //style: TextStyle(
      //  fontWeight: FontWeight.bold, fontSize: 30, color: Colors.amber),
      //)),
    );
  }

  ListTile setting({required String text1, required String text2}) {
    return ListTile(
      leading: Icon(Icons.settings),
      title: Text(text1),
      subtitle: Text(text2),
    );
  }
}
