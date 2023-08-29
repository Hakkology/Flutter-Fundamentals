import 'package:flutter/material.dart';
import 'package:flutter_oyk/model/user.dart';

class DetailScreen extends StatelessWidget {
  final User user;

  const DetailScreen({
    Key? key,
    Color? backgroundColor,
    Color? foregroundColor,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.amberAccent,
            foregroundColor: Colors.blueGrey,
            title: Text(
              user.name + user.surname,
            )),
        body: Center(
          child: ElevatedButton(
            child: const Text(
              "Back",
              textScaleFactor: 2,
            ),
            onPressed: () => Navigator.pop(context, true),
          ),
        ));
  }
}
