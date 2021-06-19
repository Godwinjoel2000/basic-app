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
      backgroundColor: Colors.amber.shade400,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Settings",
            style: TextStyle(color: Colors.deepOrange.shade900)),
      ),
      body: Center(
        //child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              setting(
                  text1: "Airplane mode",
                  text2: "Turn On or Off",
                  icon: Icons.airplanemode_active),
              Divider(
                height: 0.1,
              ),
              setting(
                  text1: "Wi-Fi",
                  text2: "Other wireless connections",
                  icon: Icons.wifi),
              Divider(
                height: 0.1,
              ),
              setting(
                  text1: "Bluetooth",
                  text2: "Turn On or Off",
                  icon: Icons.bluetooth),
              Divider(
                height: 0.1,
              ),
              setting(
                  text1: "Battery", text2: "76%", icon: (Icons.battery_full)),
              Divider(
                height: 0.1,
              ),
              setting(
                  text1: "Security",
                  text2: "Fingerprint,face & password",
                  icon: (Icons.security)),
              Divider(
                height: 0.1,
              ),
              setting(
                  text1: "Location",
                  text2: "Turn On or Off",
                  icon: (Icons.location_on)),
              Divider(
                height: 0.1,
              ),
              setting(
                  text1: "Language and region",
                  text2: "Select your preferences",
                  icon: (Icons.language)),
              Divider(
                height: 0.1,
              ),
              setting(
                  text1: "App management",
                  text2: "Manage apps",
                  icon: (Icons.apps)),
              Divider(
                height: 0.1,
              ),
              setting(
                  text1: "About Phone",
                  text2: "Software updates",
                  icon: (Icons.phone_android)),
              Divider(
                height: 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile setting(
      {required String text1, required String text2, required IconData icon}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text1),
      subtitle: Text(text2),
      onTap: () {},
    );
  }
}
