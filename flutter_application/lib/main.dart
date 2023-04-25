import 'package:flutter/material.dart';
import 'package:flutter_application/landingpage.dart';
import 'package:flutter_application/login.dart';
import 'package:flutter_application/homepage.dart';
import 'package:flutter_application/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web App Landing Page',
      theme: ThemeData(
        // This is the theme of your application.
        
        primarySwatch: Colors.yellow,
      ),
      home: SignUp()
    );
  }
}
