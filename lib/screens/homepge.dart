import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu2/main.dart';
import 'package:page_transition/page_transition.dart';

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
      // onGenerateRoute: (settings) {
      //  switch (settings.name) {
      //    case '/homepage':
      //     return PageTransition(
      //          child: Homepage(),
      //         type: PageTransitionType.leftToRight,
      //          duration: Duration(milliseconds: 3));
      //   //break;
      //   default:
      //       return null;
      //    }
      // }
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        // elevation: 10,
        backgroundColor: Colors.black87,
        title: Text("Home page", style: TextStyle(color: Colors.amber)),
      ),
      body: Column(
        children: <Widget>[
          butt(bg: Colors.blueGrey, text: "Welcome to Home Page"),
          Container(
            child: Card(
              color: Colors.grey,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                alignment: Alignment.center,
                height: 465,
                width: 1000,
                child: Text(
                  "This is a sample page\n Hence no content is displayed",
                  style: GoogleFonts.lato(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          butt(bg: Colors.blueGrey, text: 'Thank You'),
        ],
      ),
    );
  }

  Container butt({required Color bg, required String text}) {
    return Container(
      child: Card(
        color: bg,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Container(
          alignment: Alignment.center,
          height: 75,
          width: 1000,
          child: Text(
            text,
            style: GoogleFonts.staatliches(fontSize: 22),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
