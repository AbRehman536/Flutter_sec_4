import 'package:flutter/material.dart';

class DialogBoxDemo extends StatelessWidget {
  const DialogBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        Image.asset("assets/images/1348431.png"),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          IconButton(onPressed: (){
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Thank You"),
                  content: Text("You Like the Post"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Okay"))
                  ],
                );
              }, );
          }, icon: Icon(Icons.favorite)),
          IconButton(onPressed: (){
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Thank You"),
                  content: Text("You Comment the Post"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Okay"))
                  ],
                );
              }, );
          }, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Thank You"),
                  content: Text("You Saved the Post"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Okay"))
                  ],
                );
              }, );
          }, icon: Icon(Icons.bookmark)),
          IconButton(onPressed: (){
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Thank You"),
                  content: Text("You Share the Post"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Okay"))
                  ],
                );
              }, );
          }, icon: Icon(Icons.share)),
        ],)
      ],),
    );
  }
}
