import 'package:flutter/material.dart';
import './home.dart';
import './splashscreen.dart';

void main() {
  runApp(const Celebrare());
}

class Celebrare extends StatelessWidget {
  const Celebrare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splashScreen", // Use lowercase 'splashScreen'
      routes: {
        "splashScreen": (context) => const Splashscreen(),
        "home": (context) => Home(),
      },
    );
  }
}
