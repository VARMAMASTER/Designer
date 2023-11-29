import 'package:flutter/material.dart';

class page extends StatefulWidget {
  const page({Key? key, this.addedText = ''}) : super(key: key);

  final String addedText;

  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color.fromARGB(255, 255, 238, 187),
        ),
        width: 400,
        height: 480,
        child: Center(
          child: Text(
            widget.addedText,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
