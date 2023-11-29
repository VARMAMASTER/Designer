import 'package:flutter/material.dart';

class editArea extends StatefulWidget {
  const editArea({super.key});

  @override
  State<editArea> createState() => _editAreaState();
}

class _editAreaState extends State<editArea> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      child: Container(
        height: 220,
        width: 450,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                  height: 160,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(
                        color: const Color.fromARGB(255, 60, 59, 59),
                        width: 2.5),
                  )),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 40, 211, 46),
              ),
              child: const Text(
                "OK",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
