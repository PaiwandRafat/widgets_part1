import 'package:flutter/material.dart';

class TextOne extends StatefulWidget {
  const TextOne({super.key});

  @override
  State<TextOne> createState() => _TextOneState();
}

class _TextOneState extends State<TextOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text"),backgroundColor: Colors.blueAccent,),
      body:const Column(
        children: [
          Text("Text widgets for learning fluter "),
          Text("style text",style: TextStyle(

            color: Colors.blue,
            backgroundColor: Colors.red,

            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
             

             decoration: TextDecoration.underline,
             decorationColor: Colors.red,
             decorationThickness: 2,
             decorationStyle: TextDecorationStyle.dashed,

             wordSpacing: 2,
             letterSpacing: 2,

             shadows: [
              Shadow(
                blurRadius: 2,
                color:Colors.brown,
                offset: Offset(4, 6)
              )
             ]

          ),)
        ],
      ),
    );
  }
}