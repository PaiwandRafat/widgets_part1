import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double numberPadding;
  final double numberMargin;
  final double? width;
  final double? height;
  final Color? color;
  final double borderRadius;
  final Widget? child;
  final Text? label;
  final EdgeInsets padding;
  final EdgeInsets margin;

  CustomContainer({
    Key? key,
    required this.numberPadding,
    required this.numberMargin,
    this.width,
    this.height,
    this.color ,
    this.borderRadius = 0.0,
    this.child,
    this.label,
  })  : padding = EdgeInsets.all(numberPadding),
        margin = EdgeInsets.all(numberMargin),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: margin,
      padding: padding,
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        image:const DecorationImage(
         // repeat: ImageRepeat.repeat,
         fit: BoxFit.fill,
          image: AssetImage("Computer.png"),
        
        ),
      border: Border.all(width: 10,color: Colors.black),
      //  border: Border(
      //   bottom: BorderSide(width: 10,color: Colors.black),
      //   left: BorderSide(width: 10,color: Colors.black),
      //   right: BorderSide(width: 10,color: Colors.black),
      //   top:  BorderSide(width: 10,color: Colors.black),
      //   ),
        //***************************** */
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight:Radius.circular(10),
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10) ),
        color: Colors.yellowAccent,
       // borderRadius: BorderRadius.circular(borderRadius),
       //***************************** */
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(5, 5),
            blurRadius: 10.0,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: child ?? label,  //wata yakam jar saire bka bzana child haya agar bu daina nabu sairi bka bzana lable haya agar bu dayna agar naw hech daman
    );
  }
}

class MyAppContainer extends StatelessWidget {
  const MyAppContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomContainer(
            numberPadding: 10,
            numberMargin: 10,
            child: Text("child"),
            label: Text("lable"),
          ),
          CustomContainer(
            numberPadding: 10,
            numberMargin: 10,
            label: Text("lable"),
          ),
        ],
      ),
    );
  }
}