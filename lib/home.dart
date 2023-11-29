import 'package:celebrare/components/editArea.dart';
import 'package:celebrare/components/editingTools.dart';
import 'package:celebrare/components/page.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Designer-Celebrare"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.undo)),
          const SizedBox(
            width: 5,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.redo)),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 40, 211, 46),
              ),
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          page(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 0, 71, 225),
            ),
            child: const Text(
              "add Text",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          editArea(),
          Tools(),
        ],
      ),
    );
  }
}
