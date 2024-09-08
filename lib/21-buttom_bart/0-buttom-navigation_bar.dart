import 'package:flutter/material.dart';

class BottomNavigationBar1 extends StatefulWidget {
  const BottomNavigationBar1({super.key});

  @override
  State<BottomNavigationBar1> createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  int SelectedAnswer=0;
  List widgets=[
    Text("data"),
    Text("da\ta")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar Example'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.yellow,
        selectedItemColor: Colors.black,
        currentIndex: SelectedAnswer,
        onTap: (value) {
         setState(() {
            SelectedAnswer=value;
         });
        },
        items: const [
          BottomNavigationBarItem(
            
            icon: Icon(Icons.abc),
            label: 'ABC',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
        ],
      ),
      body:widgets.elementAt(SelectedAnswer)
    );
  }
}
