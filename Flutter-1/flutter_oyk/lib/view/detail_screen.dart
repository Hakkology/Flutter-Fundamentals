import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String appBarTitle;

  const DetailScreen({
    Key? key,
    Color? backgroundColor,
    Color? foregroundColor,
    required this.appBarTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
          foregroundColor: Colors.blueGrey,
          title: Text(
            appBarTitle,
          )),
    );
  }
}
