import 'package:flutter/material.dart';
import 'package:celebrare/components/editingTools.dart';
import 'package:celebrare/components/page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String addedText = "";
  TextEditingController textController = TextEditingController();
  bool Text_active = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Designer-Celebrare"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.undo)),
          const SizedBox(width: 5),
          IconButton(onPressed: () {}, icon: const Icon(Icons.redo)),
          const SizedBox(width: 20),
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
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 82, 166, 236),
          height: MediaQuery.of(context).size.height -
              AppBar().preferredSize.height -
              12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              page(addedText: addedText),
              Visibility(
                visible: true,
                child: ElevatedButton(
                  onPressed: () {
                    _openTextEditor();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 71, 225),
                  ),
                  child: const Text(
                    "Add Text",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
              Tools(),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  void _openTextEditor() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Add Text"),
          content: TextField(
            controller: textController,
            decoration: const InputDecoration(labelText: 'Enter Text'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  addedText = textController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
