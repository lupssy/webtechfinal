import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  const CustomTextField({super.key, required this.controller, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width*0.3,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(labelText: text),
    
      ),
    );
  }
}