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
            child: Column(
          children: [
            // const SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 350,
                height: 200,
                padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/Image1.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            ElevatedButton(
              child: const Text(
                "Back",
                textScaleFactor: 2,
              ),
              onPressed: () => Navigator.pop(context, true),
            ),
          ],
        )));
  }
}
