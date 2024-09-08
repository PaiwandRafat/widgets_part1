import 'package:flutter/material.dart';

class PageViewone extends StatefulWidget {
  const PageViewone({super.key});

  @override
  State<PageViewone> createState() => _PageViewoneState();
}

class _PageViewoneState extends State<PageViewone> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView Example'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
                print("Current page: $_currentPage");
              },
              children: <Widget>[
                Container(
                  color: Colors.red,
                  child: const Center(child: Text('Page 1')),
                ),
                Container(
                  color: Colors.green,
                  child: const Center(child: Text('Page 2')),
                ),
                Container(
                  color: Colors.blue,
                  child: const Center(child: Text('Page 3')),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  _controller.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text('Previous'),
              ),
              ElevatedButton(
                onPressed: () {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text('Next'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Current Page: $_currentPage'),
          ),
        ],
      ),
    );
  }
}

