import 'package:flutter/material.dart';
import './home.dart';
import './splashscreen.dart';

void main() {
  runApp(const Celebrare());
}

class Celebrare extends StatelessWidget {
  const Celebrare({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splashScreen",
      routes: {
        "splashScreen": (context) => const splashscreen(),
        "home": (context) => home(),
      },
    ));
  }
}
