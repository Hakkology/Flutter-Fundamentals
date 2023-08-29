import 'package:flutter/material.dart';

class User {
  final String name;
  final String surname;
  Color userColor;
  bool isRead;

  User({
    required this.name,
    required this.surname,
    required this.userColor,
    this.isRead = false,
  });
}
