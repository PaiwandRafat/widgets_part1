import 'package:flutter/material.dart';

class ImageWidgets extends StatefulWidget {
  const ImageWidgets({super.key});

  @override
  State<ImageWidgets> createState() => _ImageWidgetsState();
}

class _ImageWidgetsState extends State<ImageWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Image.asset("assets/Computer.png",width: 100,height: 100,),
          Divider(),
           Image.network("https://www.google.com/imgres?q=image%20in%20flutter%20example&imgurl=https%3A%2F%2Fflutterrdart.com%2Fwp-content%2Fuploads%2F2018%2F12%2Fflutter-hello-world.png&imgrefurl=https%3A%2F%2Fflutterrdart.com%2Fflutter-hello-world-example%2F&docid=DLBBciOK38-whM&tbnid=Qyh4u6y57Yx7pM&vet=12ahUKEwiyg4yHwKyHAxXlRPEDHTAdA-QQM3oECF4QAA..i&w=882&h=529&hcb=2&ved=2ahUKEwiyg4yHwKyHAxXlRPEDHTAdA-QQM3oECF4QAA",
           height: 100,width: 100,
           ),
        ],
      ),
    );
  }
}