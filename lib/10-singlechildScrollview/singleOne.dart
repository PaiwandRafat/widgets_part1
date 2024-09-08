import 'package:flutter/material.dart';

class SinglechildScrollViewOne extends StatefulWidget {
  const SinglechildScrollViewOne({super.key});

  @override
  State<SinglechildScrollViewOne> createState() => _SinglechildScrollViewOneState();
}

class _SinglechildScrollViewOneState extends State<SinglechildScrollViewOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SinglechildScrollView"),
      backgroundColor: Colors.black,),
      body: SingleChildScrollView(
        
        clipBehavior: Clip.antiAliasWithSaveLayer,
        reverse: false,
         padding: EdgeInsets.all(1),
         physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,

        child: Row(
          children: [
            Container(height: 300,width: 300,color: Colors.amber,
            child: Text("one"),),
             Container(height: 300,width: 300,color: Colors.black,child: Text("2"),),
              Container(height: 300,width: 300,color: Colors.amber,child: Text("3"),),
               Container(height: 300,width: 300,color: Colors.blue,child: Text("4"),),
                 Container(height: 300,width: 300,color: Colors.amber,),
             Container(height: 300,width: 300,color: Colors.black,),
              Container(height: 300,width: 300,color: Colors.amber,),
               Container(height: 300,width: 300,color: Colors.blue,),
          ],
        ),
      ),
    );
  }
}