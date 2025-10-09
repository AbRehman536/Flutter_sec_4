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
            child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg",height: 400,width: 500,)),
      ],),
    );
  }
}
