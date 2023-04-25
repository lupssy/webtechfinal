import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



var apiUrl = 'http://127.0.0.1:5000/Posts';

class PostModel{
  final String userEmail;
  final String userName;
  final String message;
  final DateTime timestamp;



 PostModel({
  required this.userName,
  required this.timestamp,
  required this.userEmail,
  required this.message,

});

factory PostModel.fromJson(Map<String, dynamic> json){
  return PostModel(
    userName: json['userName'],
    timestamp: json['timeStamp'], 
    userEmail: json['userEmail'], 
    message: json['message'], 
    );
}

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'userEmail': userEmail,
      'message': message,
    };
  }

// create post 
Future <void> createtUserPost(context) async {
 var response = await http.post(
  Uri.parse(apiUrl),
  headers: 
    <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    
  },
  body: jsonEncode(toMap())
  );
   print(response.statusCode);
  if(response.statusCode != 201){
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Something went wrong')));


  }
  else{
 
    Navigator.pop(context);
  }
 

}

}
