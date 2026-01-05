import 'package:flutter/material.dart';

class ColumnRowWidget extends StatefulWidget {
  const ColumnRowWidget({super.key});

  @override
  State<ColumnRowWidget> createState() => _ColumnRowWidgetState();
}

class _ColumnRowWidgetState extends State<ColumnRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Row(
        children: [
          Flexible(flex: 5, child: Container(color: Colors.blue)),
          Flexible(flex: 3, child: Container(color: Colors.green)),
          Flexible(flex: 2, child: Container(color: Colors.orange)),
        ],
      ),
    );
  }
}
