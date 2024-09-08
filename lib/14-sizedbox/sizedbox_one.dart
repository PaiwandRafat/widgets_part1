import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizedBoxOne extends StatefulWidget {
  const SizedBoxOne({super.key});

  @override
  State<SizedBoxOne> createState() => _SizedBoxOneState();
}

class _SizedBoxOneState extends State<SizedBoxOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
        body: Row(
  children: <Widget>[
    SizedBox(
       
      width: 100,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(0)
          )
        ),
              onPressed: () => print('Button Pressed'),
              child: Text('Click Me'),
            ),
    ),
    SizedBox(
      
      width: 100,
      height: 100,
            child: IconButton(
              icon: Icon(Icons.star),
        style: IconButton.styleFrom(

          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1,color: Colors.red),
            borderRadius: BorderRadius.circular(0)
          )
        ),
              onPressed: () => print('Button Pressed'),
              
            ),
    ),
  ],
)

      
    );
  }
}