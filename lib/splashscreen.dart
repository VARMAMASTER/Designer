import "dart:async";
import "package:flutter/material.dart";

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  @override
  State<Splashscreen> createState() => SplashscreenState();
}

class SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, "home");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const BeveledRectangleBorder(
        side: BorderSide(
          color: Color.fromARGB(255, 58, 0, 20),
        ),
      ),
      color: Color.fromARGB(248, 13, 13, 21),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: "Courier New",
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/images/splash.jpeg",
            scale: 1,
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Best App for Text Editing",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: "Courier New",
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
