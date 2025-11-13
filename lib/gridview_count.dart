import 'package:flutter/material.dart';

class GridviewCountDemo extends StatelessWidget {
  const GridviewCountDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              Container(color: Colors.red,child: Column(children: [
                Text("Red"),
                Icon(Icons.access_alarm)
              ],),),
              Container(color: Colors.green,),
              Container(color: Colors.blue,),
              Container(color: Colors.yellow,),
              Container(color: Colors.orange,),
              Container(color: Colors.purple,),
            ],
        ),
      ),
    );
  }
}
