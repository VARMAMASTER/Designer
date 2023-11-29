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
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [page(), Tools(), editArea()],
        ));
  }
}
