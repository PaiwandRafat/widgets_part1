import 'package:flutter/material.dart';

class StackOne extends StatefulWidget {
  const StackOne({super.key});

  @override
  State<StackOne> createState() => _StackOneState();
}

class _StackOneState extends State<StackOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("stack"),),
      body: ListView(
        children: [
           Container(
            height: 450,
            width: 450,
             child: Stack(
                      // fit: StackFit.passthrough,
                       alignment: Alignment.center,
                       children: [
              Positioned(
                child: Container(
                  color: Colors.red,
                  height: 400,
                  width: 400,
                
                ),
              ),
              Positioned(
                child: Container(
                
                  color: Colors.amber,
                  height: 200,
                width: 200,),
              ),
              Positioned(
                child: Container(
                  color: Colors.black38,
                  height: 100,
                width: 100,),
              )
                       ],
                     ),
           ),
             Divider(),
         Container(
          color: Colors.blue,
          height: 400,
          width: 400,
           child: Stack(
            clipBehavior: Clip.antiAliasWithSaveLayer,
                   //fit: StackFit.passthrough,
                 //  alignment: Alignment.center,
                   children: [
            Positioned(

              child: Container(
                color: Colors.red,
                height: 400,
                width: 400,
              
              ),
            ),
            Positioned(
            height: 500 ,
            width: 500,
            top: 10,
            left: 20,
              child: Container(
              
                color: Colors.amber,
                height: 200,
              width: 200,),
            ),
            Positioned(
              child: Container(
                color: Colors.black38,
                height: 100,
              width: 100,),
            )
                   ],
                 ),
         ),
         SizedBox(height: 80,),
         Container(child: Stack(
          
  children: <Widget>[
    // Bottom layer
    Container(
      width: 300,
      height: 300,
      color: Colors.blue,
    ),
    // Middle layer
    Container(
      width: 250,
      height: 250,
      color: Colors.red,
    ),
    // Top layer
    Container(
      width: 200,
      height: 200,
      color: Colors.green,
    ),
  ],
),)
        ],
       
      ),
    );
  }
}