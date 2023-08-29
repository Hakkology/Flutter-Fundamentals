import 'package:flutter/material.dart';

import 'detail_screen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String title = "Name";

  bool isRead = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 60,
        itemBuilder: (context, index) => _buildUserCard(context, index),
      ),
      backgroundColor: Colors.deepPurple,
    );
  }

  Widget _buildUserCard(BuildContext context, int index) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.person,
          color: Colors.deepPurple.shade300,
          size: 40,
        ),
        title: Text(
          "$title ${(index + 1)}",
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        subtitle: const Text(
          "Surname",
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.arrow_right,
            size: 40,
          ),
          onPressed: () {
            navigateToDetail(context, index);

            setState(() {
              isRead = true;
            });
          },
        ),
        tileColor: isRead ? Colors.white : Colors.deepPurple.shade100,
      ),
    );
  }

  Future<void> navigateToDetail(BuildContext context, int index) async {
    bool isTrue = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return DetailScreen(
            appBarTitle: "$title ${(index + 1)}",
          );
        },
      ),
    );
    // ignore: avoid_print
    print("TRUE MU:  $isTrue");
  }
}
