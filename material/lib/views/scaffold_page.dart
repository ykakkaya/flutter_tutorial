import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Appbar Title'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        // leading: Icon(Icons.menu),
        // actions: [Icon(Icons.person_add), FlutterLogo()],
      ),

      drawer: Drawer(
        backgroundColor: Colors.pink.shade100,
        child: Text("Menü items Gelecek"),
      ),

      endDrawer: Drawer(
        backgroundColor: Colors.green.shade100,
        child: Text("End Menü items Gelecek"),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("tıklma gerçekleşti");
        },
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lime,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      body: FlutterLogo(size: 500),
    );
  }
}
