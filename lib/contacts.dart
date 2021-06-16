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
class contactpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffEEEEEE),
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text("Contacts", style: TextStyle(color: Colors.amber)),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                tiles(name: '', number: ''),
                tiles(name: '', number: ''),
                tiles(name: '', number: ''),
                tiles(name: '', number: ''),
                tiles(name: '', number: ''),
                tiles(name: '', number: ''),
                tiles(name: '', number: ''),
                tiles(name: '', number: ''),
                tiles(name: '', number: ''),
                tiles(name: '', number: ''),
                tiles(name: '', number: ''),
                tiles(name: '', number: ''),
              ],
            ),
          ),
        ));
    // child:
    //Text(
    //"You have no Contacts",
    // style: TextStyle(
    ////   fontWeight: FontWeight.bold, fontSize: 30, color: Colors.amber),
    //)),
    //Children:<Widget>[

    // ]
  }

  ListTile tiles({required String name, required String number}) {
    return ListTile(
      leading: Icon(Icons.people),
      title: Text("Contact Name"),
      subtitle: Text("Phone Number"),
    );
  }
}
