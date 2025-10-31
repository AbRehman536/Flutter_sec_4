import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        actions: [
          Icon(Icons.notification_add_outlined),
          Icon(Icons.menu)
        ],
      ),
      body: Card(
        color: Colors.yellow,
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.grey,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Ahmed Tariq"),
                subtitle: Text("Hello, How are you ?"),
                trailing: Text("5:10 PM"),
              ),
            );
          },
        ),
      ),
    );
  }
}
