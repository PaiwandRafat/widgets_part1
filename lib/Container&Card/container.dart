import 'package:flutter/material.dart';



class containerWidget extends StatefulWidget {
  const containerWidget({super.key});

  @override
  State<containerWidget> createState() => _containerWidgetState();
}

class _containerWidgetState extends State<containerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container"),),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: 200,

            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),

            child: Text("container"),
            alignment: Alignment.center,

            decoration: BoxDecoration(
             color: Colors.blue,
              border: Border.all(color: Colors.brown,width: 3,),
                //  border: Border(
      //   bottom: BorderSide(width: 10,color: Colors.black),
      //   left: BorderSide(width: 10,color: Colors.black),
      //   right: BorderSide(width: 10,color: Colors.black),
      //   top:  BorderSide(width: 10,color: Colors.black),
      //   ),
        
          borderRadius: BorderRadius.circular(45),
      //  borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.circular(10),
      //     bottomRight:Radius.circular(10),
      //     topLeft: Radius.circular(10),
      //     topRight: Radius.circular(10) ),
        
       boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(5, 5),
            blurRadius: 10.0,
          ),
        ],
      
               image:const DecorationImage(
         // repeat: ImageRepeat.repeat,
         fit: BoxFit.fill,
          image: AssetImage("Computer.png"),
        
        ),
            ),
          ),
           SizedBox(height: 400,),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff0072ff),
                  Color(0xff00c6ff)
                ]
              )
            ),
          )
          ,
          SizedBox(height: 400,),

          Container(
            height: 600,
            width: 600,
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            )
            ),
          ),
          SizedBox(height: 400,),
          Container(
            height: 600,
            width: 600,
            decoration: BoxDecoration(
              
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.6,
                0.9,
              ],
              colors: [
                Colors.yellow,
                Colors.red,
                Colors.indigo,
                Colors.teal,
              ],
            )
              
            ),
        
          ),
          SizedBox(height: 400,),
      ])
    );
  }
}