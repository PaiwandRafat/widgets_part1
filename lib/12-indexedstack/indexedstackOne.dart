import 'package:flutter/material.dart';

class IndesxedStackOne extends StatefulWidget {
  const IndesxedStackOne({super.key});

  @override
  State<IndesxedStackOne> createState() => _IndesxedStackOneState();
}

class _IndesxedStackOneState extends State<IndesxedStackOne> {
    int _selectedIndex = 1; // Initial selected index
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("indexedstack"),),
            body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribute buttons evenly
            children: [
              ElevatedButton(
                onPressed: () => setState(() => _selectedIndex = 0),
                child: Text('Red'),
              ),
              ElevatedButton(
                onPressed: () => setState(() => _selectedIndex = 1),
                child: Text('Brown'),
              ),
              ElevatedButton(
                onPressed: () => setState(() => _selectedIndex = 2),
                child: Text('Green'),
              ),
            ],
          ),
          IndexedStack(
            
            index: _selectedIndex,
            children: [
              Container(
                height: 400,
                width: 400,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.brown,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }
}