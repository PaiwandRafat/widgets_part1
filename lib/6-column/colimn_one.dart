import 'package:flutter/material.dart';

class ColumnOne extends StatefulWidget {
  const ColumnOne({super.key});

  @override
  State<ColumnOne> createState() => _ColumnOneState();
}

class _ColumnOneState extends State<ColumnOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column"),),
    body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 400,
              width: double.infinity,
              color: Colors.blueAccent,
              child: Column(
              //  mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
               // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 100,width: 100, child: Image.asset("assets/dice-images/dice-1.png")),
                Container(height: 100,width: 100,child: Image.asset("assets/dice-images/dice-2.png")),
                Container(height: 100,width: 100,child: Image.asset("assets/dice-images/dice-4.png")),

                
              ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 400,
              width: double.infinity,
              color: Colors.blueAccent,
               child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  Text("Row&column main= spaceEvenly"),
                  Text("Row cross= start"),
                   Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                    children: <Widget>[
                    Container(height: 100,width: 100, child: Image.asset("assets/dice-images/dice-1.png")),
                    Container(height: 100,width: 100,child: Image.asset("assets/dice-images/dice-2.png")),
                    Container(height: 100,width: 100,child: Image.asset("assets/dice-images/dice-4.png"))
                    ],
                                 ),
                 ],
               ),
            ),
          ],
         ),
    );
  }
}