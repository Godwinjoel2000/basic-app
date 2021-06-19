import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu2/screens/contacts.dart';
import 'package:menu2/screens/exit.dart';
import 'package:menu2/screens/homepge.dart';
import 'package:menu2/screens/messages.dart';
import 'package:menu2/screens/settings.dart';
import 'package:menu2/animation/fade.dart';

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
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        //'/': (context) => MyApp(),
        '/homepage': (context) => Homepage(),
        '/messages': (context) => messagepage(),
        '/contacts': (context) => contactpage(),
        '/settings': (context) => settings(),
        '/exit': (context) => exitpage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  //ANIMATION
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();

    super.initState();
    _controller.forward().whenComplete(() {
      setState(() {});
    });
  }

  @override

//  void initState() {
  //  _controller =
  //      AnimationController(vsync: this, duration: Duration(seconds: 1));
  //  _animationn = Tween(
  ///    begin: 0,
  //     end: 2,
  //   ).animate(_controller);
  //  _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  // _animation.addStatusListener((status) {
  //if (status == AnimationStatus.completed) {
  //  _controller.reverse();
  ////} else if (status == AnimationStatus.dismissed) {
  //    _controller.forward();
  //   }
  // });
  //  _controller.forward();

  //   super.initState();
  // }

// final controller =
  //  AnimationController(vsync: this, duration: Duration(seconds: 1));
  //@override
  // void initState() {
  //  AnimationController(vsync: this, duration: Duration(seconds: 3));
  //
  //  super.initState();
  // }
//
//Route _createRoute() {
  // return PageRouteBuilder(
  //   pageBuilder: (context, animation, secondaryAnimation) =>messagepage(),
  //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //     var begin = Offset(0.0, 1.0);
  //    var end = Offset.zero;
  //     var curve = Curves.ease;
//
  //////    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  ////     return SlideTransition(
  //      position: animation.drive(tween),
  //      child: child,
  //   );
  //  },
  // );
//}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade400,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Basic-App", style: TextStyle(color: Colors.red)),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome",
              style:
                  GoogleFonts.lato(fontSize: 30, fontStyle: FontStyle.italic)),
        ),
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
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.red),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context, '');
                //Navigator.pushNamed(context, "/homepage");
                Navigator.push(context, trans(widget: Homepage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.message, color: Colors.pinkAccent),
              title: Text("Messages"),
              onTap: () {
                Navigator.pop(context, '');
                //  Navigator.pushNamed(context, '/messages');
                Navigator.push(context, trans(widget: messagepage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.people, color: Colors.blue),
              title: Text("Contacts"),
              onTap: () {
                Navigator.pop(context, '');
                //  Navigator.pushNamed(context, '/contacts');
                Navigator.push(context, trans(widget: contactpage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.deepOrange.shade900,
              ),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context, '');
                // Navigator.pushNamed(context, "/settings");
                Navigator.push(context, trans(widget: settings()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.black),
              title: Text("Exit"),
              onTap: () {
                Navigator.pop(context, '');
                //Navigator.pushNamed(context, "/exit");
                Navigator.push(context, trans(widget: exitpage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
