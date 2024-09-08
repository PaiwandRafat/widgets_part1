import 'package:flutter/material.dart';

class CardOne extends StatefulWidget {
  const CardOne({super.key});

  @override
  State<CardOne> createState() => _CardOneState();
}

class _CardOneState extends State<CardOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card"),),
      body:  Card(
      borderOnForeground: true,
      color: Colors.amber,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(width: 10,color: Colors.black)
      ),
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          const  ListTile(
              leading: Icon(Icons.album),
              title: Text('The Flutter Album'),
              subtitle: Text('This is a description of the album.'),
            ),
            ButtonBar(
              children: <Widget>[
                TextButton(
                  child: Text('BUY TICKETS'),
                  onPressed: () {
                    // Handle button press
                  },
                ),
                TextButton(
                  child: Text('LISTEN'),
                  onPressed: () {
                    // Handle button press
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }
}