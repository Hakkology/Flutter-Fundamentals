import 'package:flutter/material.dart';

class User {
  final String name;
  String state = "Not Read";
  Color userColor;
  bool isRead;

  User({
    required this.name,
    required this.state,
    required this.userColor,
    this.isRead = false,
  });
}
