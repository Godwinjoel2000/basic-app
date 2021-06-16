import 'package:flutter/material.dart';
import 'package:menu2/contacts.dart';
import 'package:menu2/exit.dart';
import 'package:menu2/messages.dart';
import 'package:menu2/settings.dart';
import 'homepge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("<--- Press Here", style: TextStyle(color: Colors.amber)),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(color: Colors.amber),
              child: Image.network(
                "https://icecubes.tech/wp-content/uploads/2020/09/INVOICE-HEAD.png",
                fit: BoxFit.contain,
                //color: Colors.black,
              ), // Text(
              //"Contents",
              //  style: TextStyle(
              //    fontSize: 30,
              //    fontStyle: FontStyle.italic,
              //     color: Colors.black),
              //   textAlign: TextAlign.center,
              //  ),
              //  alignment: Alignment.center,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context); //closes drawer
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Homepage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Messages"),
              onTap: () {
                Navigator.pop(context); //closes drawer
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => messagepage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Contacts"),
              onTap: () {
                Navigator.pop(context); //closes drawer
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => contactpage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context); //closes drawer
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => settings()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {
                Navigator.pop(context); //closes drawer
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => exitpage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
