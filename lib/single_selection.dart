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
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Single Selection"),
        centerTitle: true,
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
            selectedTileColor: Colors.lightBlue,

            leading: Icon(selectedIndex== index ? Icons.notification_add : Icons.percent),
            title: Text("Selected Index: $selectedIndex"),
            subtitle: Text("Index: $index"),
            trailing: Icon(selectedIndex == index ? Icons.remove : Icons.add),
          );
        },
      ),
    );
  }
}
