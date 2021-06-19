import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        backgroundColor: Colors.amber.shade400,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text("Contacts", style: TextStyle(color: Colors.blue)),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                tiles(name: 'Phoenix', number: '9876543210'),
                Divider(
                  height: 0.1,
                ),
                tiles(name: 'Sage', number: '8765432109'),
                Divider(
                  height: 0.1,
                ),
                tiles(name: 'Omen', number: '7654321098'),
                Divider(
                  height: 0.1,
                ),
                tiles(name: 'Astra', number: '9988776655'),
                Divider(
                  height: 0.1,
                ),
                tiles(name: 'Brimstone', number: '8877665544'),
                Divider(
                  height: 0.1,
                ),
                tiles(name: 'Raze', number: '7766554433'),
                Divider(
                  height: 0.1,
                ),
                tiles(name: 'Jett', number: '9876987654'),
                Divider(
                  height: 0.1,
                ),
                tiles(name: 'Yoru', number: '9876987698'),
                Divider(
                  height: 0.1,
                ),
                tiles(name: 'Skye', number: '9876598765'),
                Divider(
                  height: 0.1,
                ),
                tiles(name: 'Sova', number: '8765487654'),
                Divider(
                  height: 0.1,
                ),
                tiles(name: 'Breach', number: '7654376543'),
                Divider(
                  height: 0.1,
                ),
                tiles(name: 'Killjoy', number: '9485748393'),
              ],
            ),
          ),
        ));
  }

  ListTile tiles({required String name, required String number}) {
    return ListTile(
      leading: Icon(Icons.people, color: Colors.black),
      title: Text(
        name,
        style: GoogleFonts.orbitron(color: Colors.red),
      ),
      subtitle: Text(number),
      onTap: () {},
    );
  }
}
