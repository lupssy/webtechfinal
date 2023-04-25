import 'package:flutter/material.dart';

class CustomScaffold extends StatefulWidget {
  final Widget child;
  final double width;
  final double height;
  const CustomScaffold({super.key,
   required this.child,
   this.height =  1024,
   this.width = 1440
 
   });

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft, 
          colors:[
      Color(0x00FFFFD800),
        Color(0xffffbf00),
        Color(0xffffff00),
          ] ),
          
          ),
          child: widget.child,
    );
  }
}