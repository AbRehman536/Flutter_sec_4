import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            Container(color: Colors.red,),
            Container(color: Colors.yellow,),
            Container(color: Colors.blue,),
            Container(color: Colors.green,),
            Container(color: Colors.orange,),
        ],
      ),
    );
  }
}
