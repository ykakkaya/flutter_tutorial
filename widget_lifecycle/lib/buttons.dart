import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({super.key});

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  String appbarText = "Buttons Page";
  String filledButtonText = "Filled Button";
  String elevatedButtonText = "Elevated Button";
  String outlinedButtonText = "Outlined Button";
  String textButtonText = "Text Button";
  Set<String> selectedItem = <String>{"C"};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarText, style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            FilledButton.tonal(
              style: FilledButton.styleFrom(backgroundColor: Colors.amber),
              onPressed: () {
                print("filled button pressed");
              },
              onLongPress: () {
                print("filled button long pressed");
              },
              child: Text(filledButtonText),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              icon: Icon(Icons.person),
              label: Text(
                elevatedButtonText,
                style: TextStyle(color: Colors.white),
              ),
            ),
            OutlinedButton(onPressed: () {}, child: Text(outlinedButtonText)),
            TextButton(onPressed: () {}, child: Text(textButtonText)),
            IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down)),
            SegmentedButton<String>(
              segments: [
                ButtonSegment(value: "A", label: Text("A Harfi")),
                ButtonSegment(value: "B", label: Text("B Harfi")),
                ButtonSegment(value: "C", label: Text("C Harfi")),
              ],
              selected: selectedItem,
              onSelectionChanged: (Set<String> newSelection) {
                //print(newSelection);
                setState(() {
                  selectedItem = newSelection;
                  print(selectedItem);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
