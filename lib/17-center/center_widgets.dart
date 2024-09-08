import 'package:flutter/material.dart';

class CenterWidgets extends StatefulWidget {
  const CenterWidgets({super.key});

  @override
  State<CenterWidgets> createState() => _CenterWidgetsState();
}

class _CenterWidgetsState extends State<CenterWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Icon(Icons.add_a_photo),)
        ],
      ),
    );
  }
}