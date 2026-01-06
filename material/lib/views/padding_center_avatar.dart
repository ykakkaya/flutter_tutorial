import 'package:flutter/material.dart';

class PaddingCenterAvatar extends StatefulWidget {
  const PaddingCenterAvatar({super.key});

  @override
  State<PaddingCenterAvatar> createState() => _PaddingCenterAvatarState();
}

class _PaddingCenterAvatarState extends State<PaddingCenterAvatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Center Avatar'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 38, top: 20),
              child: Text("Ben bir Text Widget'ıyım"),
            ),
          ),

          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 50,
            child: Text(
              "YK",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
