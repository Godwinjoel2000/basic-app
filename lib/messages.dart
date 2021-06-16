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
        backgroundColor: Color(0xffEEEEEE),
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text("Messages", style: TextStyle(color: Colors.amber)),
        ),
        body: Center(
          child: Container(
            height: 330,
            width: 330,
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.network(
                "https://www.pinpng.com/pngs/m/675-6758578_cutting-edge-technology-to-keep-spam-out-of.png",
                fit: BoxFit.fill),
            // "",
            // style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     color: Colors.amber.shade900),
            //
            //),

            //),
          ),
        ));
  }
}
