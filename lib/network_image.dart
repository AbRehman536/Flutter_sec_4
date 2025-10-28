import 'package:flutter/material.dart';

class NetworkImageDemo extends StatelessWidget {
  const NetworkImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network Image"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          color: Colors.yellow,
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPpAh63HncAuJOC6TxWkGLYpS0WwNXswz9MA&s",
          width: 300,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.green,
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPpAh63HncAuJOC6TxWkGLYpS0WwNXswz9MA&s",
          width: 300,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
      ],),
    );
  }
}
