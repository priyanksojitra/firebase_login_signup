import 'dart:async';
import 'package:flutter/material.dart';

class Streambuilder extends StatefulWidget {
  const Streambuilder({Key? key}) : super(key: key);

  @override
  State<Streambuilder> createState() => _StreambuilderState();
}

class _StreambuilderState extends State<Streambuilder> {
  int counter = 0;
 StreamController controller = StreamController();

  @override
  Widget build(BuildContext context) {
    floatingActionButton:
    FloatingActionButton(
      onPressed: () {
        controller.sink.add(counter++);
      },
      backgroundColor: Colors.green,
      child: const Icon(Icons.add),
    );

    return Scaffold(
      body: StreamBuilder(

          stream: controller.stream,
          builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text("$counter");
        } else {
          return const Text("0");
        }
      }),
    );
  }
}
