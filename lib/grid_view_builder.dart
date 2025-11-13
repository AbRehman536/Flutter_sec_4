import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20

          ),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
            return Container(color: Colors.red,);
        },),
    );
  }
}
