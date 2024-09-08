import 'package:flutter/material.dart';

class DividerOne extends StatefulWidget {
  const DividerOne({super.key});

  @override
  State<DividerOne> createState() => _DividerOneState();
}

class _DividerOneState extends State<DividerOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Divider"),backgroundColor: Colors.blueAccent,),
      body: Column(
        children: [
          Container(color: Colors.red,height: 100,width: 100,),
          Divider(
  height: 120.0,
  thickness: 3.0,
  color: Colors.blue,
  //indent: 0.0,
  endIndent: 25.0,
),
          Container(color: Colors.red,height: 100,width: 100,),
          Container(
            height: 120,
            child: Row(
              children: [
                Container(height: 100,width: 100,color: Colors.red,),
               VerticalDivider(
  width: 30.0,
  thickness: 3.0,
  color: Colors.blue,
  //indent: 20.0,
  endIndent: 20.0,
),
                Container(height: 100,width: 100,color: Colors.blue,)
              ],
            ),
          )
        ],
      ),
    );
  }
}