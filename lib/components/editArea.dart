import 'package:flutter/material.dart';

class editArea extends StatefulWidget {
  const editArea({super.key});

  @override
  State<editArea> createState() => _editAreaState();
}

class _editAreaState extends State<editArea> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 200,
        width: 450,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(
                color: const Color.fromARGB(255, 60, 59, 59), width: 2.5)),
      ),
    );
  }
}
