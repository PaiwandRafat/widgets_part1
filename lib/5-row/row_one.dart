import 'package:flutter/material.dart';

class ROWONE extends StatefulWidget {
  const ROWONE({super.key});

  @override
  State<ROWONE> createState() => _ROWONEState();
}

class _ROWONEState extends State<ROWONE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row"),),


               body:Container(
                height: double.maxFinite,
                width: double.infinity,
                 child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       crossAxisAlignment: CrossAxisAlignment.center, 
                      children: [
                      Container(height: 100,width: 100, child: Image.asset("assets/dice-images/dice-1.png")),
                      Container(height: 100,width: 100,child: Image.asset("assets/dice-images/dice-2.png")),
                      Container(height: 100,width: 100,child: Image.asset("assets/dice-images/dice-4.png"))
                      ],
                                   ),
               ),
    );
  }
}