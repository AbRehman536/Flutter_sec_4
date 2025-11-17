import 'package:flutter/material.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(children: [
            ElevatedButton(onPressed: (){
              showModalBottomSheet(
                  context: context,
                builder: (BuildContext context) {
                    return Container(
                      height: 400,
                      width: 200,
                      child: Column(children: [
                        Card(
                          child: ListTile(
                            leading: Icon(Icons.settings),
                            title: Text("Settings"),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Icon(Icons.favorite),
                          Icon(Icons.comment),
                          Icon(Icons.bookmark),
                          Icon(Icons.share),
                        ],)
                      ],),
                    );
                },);
            }, child: Text("Show Bottom Sheet"))
        ],),
      ),
    );
  }
}
