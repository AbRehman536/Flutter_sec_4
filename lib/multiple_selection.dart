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
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Multiple Selection"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
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
            tileColor: selectedIndex.contains(index) ? Colors.blue : Colors.white,
            textColor: selectedIndex.contains(index) ? Colors.white : Colors.black,
            iconColor: selectedIndex.contains(index) ? Colors.white : Colors.black,
            leading: Icon(Icons.check_box_outline_blank),
            title: Text("Multiple: $selectedIndex"),
            subtitle: Text("Index: $index"),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
