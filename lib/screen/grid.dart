import 'package:flutter/material.dart';

class grid extends StatefulWidget {
  const grid({Key? key}) : super(key: key);

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  List<String> days = [
    "january",
    "feburay",
    "march",
    "apirl",
    "may",
    "june",
    "july",
    "august",
    "september",
    "october",
    "november",
    "december",
  ];
  List<String> temp = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("grid view example"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Image.asset("assets/Heart.png"),
        )
        );
  }
}
