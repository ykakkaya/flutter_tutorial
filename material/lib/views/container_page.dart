import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Özellikleri'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        constraints: BoxConstraints(maxWidth: 300, maxHeight: 400),
        // color: Colors.red,
        foregroundDecoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.8),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(50),
          ),
        ),
        width: 50,
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        // padding: EdgeInsets.only(left: 30, top: 50),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue.shade100.withValues(alpha: 0.5),
          border: Border.all(
            color: Colors.deepOrange,
            width: 5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Text("Container içeriği"),
      ),
    );
  }
}
