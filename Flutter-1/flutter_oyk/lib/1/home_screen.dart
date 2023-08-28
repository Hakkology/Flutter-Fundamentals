import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        centerTitle: true,
      ),
      body: Card(
        child: ListTile(
          leading: const Icon(
            Icons.person_2_rounded,
            color: Colors.deepPurple,
            size: 40,
          ),
          title: const Text(
            "Name",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          subtitle: const Text("Surname"),
          trailing: IconButton(
            icon: const Icon(
              Icons.arrow_circle_right,
              size: 40,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}



// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState() {
//     print("initState");
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("buildState");
//     return Scaffold(
//         body: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Center(
//           child: Container(
//             width: 100,
//             height: 100,
//             color: Colors.amberAccent,
//           ),
//         ),
//       ],
//     ));
//   }

//   @override
//   void dispose() {
//     print("dispose");
//     super.dispose();
//   }
// }
