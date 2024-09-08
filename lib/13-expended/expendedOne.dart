import 'package:flutter/material.dart';

class ExpandedOne extends StatefulWidget {
  const ExpandedOne({super.key});

  @override
  State<ExpandedOne> createState() => _ExpandedWidgetsState();
}

class _ExpandedWidgetsState extends State<ExpandedOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(children: [
         Expanded(
          flex: 1,
            child: Container(
              height: 40,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 40,
              color: Colors.amber,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 40,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}