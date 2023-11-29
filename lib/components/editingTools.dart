import 'package:flutter/material.dart';

class Tools extends StatefulWidget {
  const Tools({super.key});

  @override
  State<Tools> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
      child: Container(
        height: 65,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black, width: 1.5)),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.delete_outlined,
                  size: 40,
                  color: Colors.black,
                ),
              ),
              VerticalDivider(
                indent: 10,
                endIndent: 10,
                color: Color.fromARGB(255, 108, 106, 106),
                thickness: 3,
                width: 20,
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  "Edit Text",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              VerticalDivider(
                indent: 10,
                endIndent: 10,
                color: Color.fromARGB(255, 108, 106, 106),
                thickness: 3,
                width: 20,
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  "Font",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              VerticalDivider(
                indent: 10,
                endIndent: 10,
                color: Color.fromARGB(255, 108, 106, 106),
                thickness: 3,
                width: 20,
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  "Size",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              VerticalDivider(
                indent: 10,
                endIndent: 10,
                color: Color.fromARGB(255, 108, 106, 106),
                thickness: 3,
                width: 20,
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  "color",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              VerticalDivider(
                indent: 10,
                endIndent: 10,
                color: Color.fromARGB(255, 108, 106, 106),
                thickness: 3,
                width: 20,
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  "Font style",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
