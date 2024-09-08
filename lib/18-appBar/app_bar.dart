import 'package:flutter/material.dart';

class appBar_widgets1 extends StatefulWidget {
  const appBar_widgets1({super.key});

  @override
  State<appBar_widgets1> createState() => _appBar_widgets1State();
}

class _appBar_widgets1State extends State<appBar_widgets1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:const Text(' App Bar'), //title
          centerTitle: true,  //shwini title

          toolbarHeight: 70.0, //barzi appBar

          backgroundColor: Colors.teal,
           shadowColor: Colors.grey,
          elevation: 4.0,

          leading: IconButton(
            icon:const Icon(Icons.menu),
            onPressed: () {
            },
          ),   // bashi chap

          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
              },
            ),
          ],        // bashi rast
            bottom: PreferredSize(
            preferredSize:const Size.fromHeight(50.0),
            child: Container(
              color: Colors.teal[100],
              height: 50.0,
              child:const Center(child: Text('Bottom Widget')),
            ),
          ),// bashi xwarawa
          
          
          
         
         
          flexibleSpace: Container(
            decoration:const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ), //style appbar
          titleSpacing: NavigationToolbar.kMiddleSpacing,
          
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ), // shape app bar

          
          
        ),
    );
  }
}