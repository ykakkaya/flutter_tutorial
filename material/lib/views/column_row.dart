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
      body: Container(
        color: Colors.limeAccent,
        child: Wrap(
          children: [
            FlutterLogo(),
            FlutterLogo(size: 60),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(size: 60),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(size: 60),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
          ],
        ),
      ),
    );
  }
}
