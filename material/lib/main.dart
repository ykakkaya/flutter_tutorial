import 'package:flutter/material.dart';
import 'package:material/views/login_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      color: Colors.white,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.amber)),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: LoginDemo(),
      debugShowCheckedModeBanner: false,
      //Debug grid yapısını etkinleştirir
      //debugShowMaterialGrid: true,
    );
  }
}
