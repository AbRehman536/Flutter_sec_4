import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  const SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        actions: [
          Icon(Icons.notification_add_outlined),
          Icon(Icons.menu)
        ],
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            selected: selectedIndex == index,
            selectedColor: Colors.white,
            selectedTileColor: Colors.blue,
            leading: Icon(selectedIndex == index ? Icons.person_2_outlined : Icons.person),
            title: Text("Ahmed Tariq, $selectedIndex"),
            subtitle: Text("Hello, How are you ?,$index"),
            trailing: Text("5:10 PM"),
          );
        },
      ),
    );
  }
}
