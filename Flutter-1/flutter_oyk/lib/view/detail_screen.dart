import 'package:flutter/material.dart';
import 'package:flutter_oyk/model/user.dart';

class DetailScreen extends StatefulWidget {
  final User user;

  const DetailScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2)).then((value) {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade100,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.amberAccent,
            foregroundColor: Colors.blueGrey,
            title: Text(
              widget.user.name + widget.user.state,
            )),
        body: Center(
            child: Column(
          children: [
            _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _buildImageAsset("assets/images/Image2.jpg"),
            _buildImageNetwork("https://picsum.photos/200"),
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

Widget _buildImageAsset(String imagePath) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      width: 350,
      height: 200,
      padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    ),
  );
}

Widget _buildImageNetwork(String imagePath) {
  return Expanded(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 350,
          height: 200,
          padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: NetworkImage(imagePath), fit: BoxFit.cover),
          ),
        ),
      ),
    ),
  );
}
