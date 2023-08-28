import 'package:flutter/material.dart';
import 'package:flutter_oyk/view/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  //List<Widget> userCardList = List.generate(6, (index) => _buildUserCard());
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: 60,
        itemBuilder: (context, index) => _buildUserCard(context, index),
      ),
    );
  }
}

Widget _buildUserCard(BuildContext context, int number) {
  return Card(
    child: ListTile(
      tileColor: const Color.fromARGB(255, 240, 228, 179),
      leading: const Icon(
        Icons.person_2_rounded,
        color: Colors.deepPurple,
        size: 40,
      ),
      title: Text(
        "Name ${(number + 1)}",
        style: const TextStyle(
          fontSize: 22,
        ),
      ),
      subtitle: const Text("Surname"),
      trailing: IconButton(
        icon: const Icon(
          Icons.arrow_circle_right,
          size: 40,
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return DetailScreen(
              appBarTitle: "Name ${(number + 1)}",
            );
          }));
        },
      ),
    ),
  );
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
