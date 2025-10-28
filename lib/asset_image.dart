import 'package:flutter/material.dart';

class AssetImageDemo extends StatelessWidget {
  const AssetImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Image"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
    body: Column(children: [
      Image.asset("assets/images/download.jpg",height: 300,)
    ],),
    );
  }
}
