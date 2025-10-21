import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("List Tile"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.orange,
            child:
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Abbas"),
              subtitle: Text("Hello, How are you?"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
