import 'package:flutter/material.dart';
import 'package:flutter_oyk/model/user.dart';

import 'detail_screen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String title = "Name";

  bool isRead = false;
  List<User> userList = List.generate(
    60,
    (index) => User(
        name: "Mail $index ",
        state: "Not Read",
        userColor: Colors.deepPurple.shade200,
        isRead: false),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mail List"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) => _buildUserCard(context, index),
      ),
    );
  }

  Widget _buildUserCard(BuildContext context, int index) {
    return Card(
      child: ListTile(
        leading: Icon(
          userList[index].isRead ? Icons.mail : Icons.mail_lock,
          color: Colors.blueGrey,
          size: 40,
        ),
        title: Text(
          userList[index].name,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        subtitle: Text(
          userList[index].state,
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.arrow_right,
            size: 40,
          ),
          onPressed: () {
            navigateToDetail(context, index);

            setState(() {
              userList[index].isRead = true;
              userList[index].state = "Read";
            });
          },
        ),
        tileColor: userList[index].isRead
            ? Colors.deepPurple.shade100
            : Colors.deepPurple.shade300,
      ),
    );
  }

  Future<void> navigateToDetail(BuildContext context, int index) async {
    bool isTrue = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return DetailScreen(
            user: userList[index],
          );
        },
      ),
    );
    // ignore: avoid_print
    print("Is is true:  $isTrue");
  }
}
