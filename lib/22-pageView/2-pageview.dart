import 'package:flutter/material.dart';

class PageViewTwo extends StatefulWidget {
  const PageViewTwo({super.key});

  @override
  State<PageViewTwo> createState() => _PageViewTwoState();
}

class _PageViewTwoState extends State<PageViewTwo> {
  final PageController _controller = PageController();
  final List<Color> _pageColors = [Colors.red, Colors.green, Colors.blue];
  int _currentPage = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _addPage() {
    setState(() {
      _pageColors.add(Colors.primaries[_pageColors.length % Colors.primaries.length]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advanced PageView Example'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _addPage,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemCount: _pageColors.length,
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  color: _pageColors[index],
                  child: Center(
                    child: Text(
                      'Page ${index + 1}',
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_pageColors.length, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  height: 12.0,
                  width: 12.0,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.black : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
