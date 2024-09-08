import 'package:flutter/material.dart';

class ExpandedTwo extends StatefulWidget {
  const ExpandedTwo({super.key});

  @override
  State<ExpandedTwo> createState() => _ExpandedTwoState();
}

class _ExpandedTwoState extends State<ExpandedTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
      children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 100,
              color: Colors.amber,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              color: Colors.red,
            ),
          ),
      ],
       ),
    );
  }
}