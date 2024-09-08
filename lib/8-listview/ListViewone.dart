import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListView1 extends StatefulWidget {
  const ListView1({super.key});

  @override
  State<ListView1> createState() => _ListView1State();
}

class _ListView1State extends State<ListView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
       // physics:BouncingScrollPhysics() ,
       //   physics:NeverScrollableScrollPhysics() ,
       //FixedExtentScrollPhysics  \\ClampingScrollPhysics  AlwaysScrollableScrollPhysics
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        //scrollDirection: Axis.horizontal,
        children: [
           Container(height: 400,width: 400,color: Colors.amber,
           
           ),
            Container(
              child: ListView(
                shrinkWrap: true,
                children: List.generate(
                  10,
                  (index) => ListTile(
                    title: Text('Item $index'),
                  ),
                ),
              ),
            ),
           Container(height: 400,width: 400,color: Colors.red,),
           Container(height: 400,width: 400,color: Colors.blue,),
      ],),
    );
  }
}