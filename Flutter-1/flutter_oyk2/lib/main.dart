import 'package:flutter/material.dart';

void main() {
  runApp(StateApp());
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _textEditingController;
  @override
  void initState() {
    print("initstate");
    TextEditingController _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build");

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          ),
          TextField(
            controller: _textEditingController,
          ),
          TextField()
        ],
      ),
    );
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }
}
