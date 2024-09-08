import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        elevation: 100,
        
                    leading:const Icon(Icons.arrow_back),
                    centerTitle: true,
                    title:const Text('Flutter Gradient Example AppBar'),

                    gradient:const LinearGradient(
                      colors: [
                        Colors.cyan,
                        Colors.indigo,
                      ],
                    ),
                    actions:const [
                      Icon(Icons.notifications),
                      SizedBox(width: 10,),
                      Icon(Icons.menu),
                    ],
                  ),
    );
  }
}