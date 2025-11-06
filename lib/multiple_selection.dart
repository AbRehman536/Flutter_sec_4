import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  const MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple Selection"),
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
                if(selectedIndex.contains(index)){
                  selectedIndex.remove(index);
                }else{
                  selectedIndex.add(index);
                }
              });
            },
            selected: selectedIndex.contains(index),
            selectedTileColor: Colors.blue,
            selectedColor: Colors.white,
            leading: Icon(selectedIndex.contains(index) ? Icons.person_2_outlined : Icons.person),
            title: Text("Ahmed Tariq,$selectedIndex"),
            subtitle: Text("Hello, How are you ?,$index"),
            trailing: Text("5:10 PM"),
          );
        },
      ),
    );
  }
}
