import 'package:flutter/material.dart';

class Notification_Model {
  final String message;
  final String id;
  final String timeStamp;

  Notification_Model({
    required this.id,
    required this.message,
    required this.timeStamp
  });

  factory Notification_Model.fromJson(Map<String, dynamic> json){
    return Notification_Model(
      id: json['id'],
      message: json['message'], 
      timeStamp: json['timeStamp']
      );
  }

    Map<String, dynamic> toMap() {
    return {
      'id': id,
      'message': message,
      'timeStamp': timeStamp,
    };
  }
   
}