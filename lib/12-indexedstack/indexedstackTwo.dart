import 'package:flutter/material.dart';

class indexedStackTwo extends StatefulWidget {
  const indexedStackTwo({super.key});

  @override
  State<indexedStackTwo> createState() => _indexedStackTwoState();
}

class _indexedStackTwoState extends State<indexedStackTwo> {
  final List<Widget> tabs = [
    Text('Tab 1 Content'),
    Text('Tab 2 Content'),
    Text('Tab 3 Content'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: tabs.asMap().entries.map((entry) {
              final index = entry.key;
              final label = entry.value;
              return TextButton(
                onPressed: () => setState(() => selectedIndex = index),
                child: Text(
                  label.toString(),
                  style: TextStyle( // Style the button text here
                    color: Colors.red, // Example color change
                    fontSize: 18.0,
                  ),
                ),
              );
            }).toList(),
          ),
          IndexedStack(
            index: selectedIndex,
            children: tabs,
          ),
        ],
      ),
    );
  }
}
