import 'package:flutter/material.dart';

class WrapOne extends StatefulWidget {
  const WrapOne({super.key});

  @override
  State<WrapOne> createState() => _WrapOneState();
}

class _WrapOneState extends State<WrapOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wrap"),),
      body: Wrap(
          direction: Axis.horizontal,
          children: [
            Container(width: 300,height: 300,color: Colors.brown,),
             Container(width: 300,height: 300,color: Colors.black,),
              Container(width: 300,height: 300,color: Colors.red,),
               Container(width: 300,height: 300,color: Colors.blue,),
                Container(width: 300,height: 300,color: Colors.red,),
          ],
         ),
    );
  }
}