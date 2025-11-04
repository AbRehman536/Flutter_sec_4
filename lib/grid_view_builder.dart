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
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20

          ),
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return
                Container(
                  color: Colors.orange,
                  child: Text("Grid View"),);
          },

      ),
    );
  }
}
