import 'package:flutter/material.dart';

class DialogBoxDemo extends StatefulWidget {
  const DialogBoxDemo({super.key});

  @override
  State<DialogBoxDemo> createState() => _DialogBoxDemoState();
}

class _DialogBoxDemoState extends State<DialogBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(child:
        ElevatedButton(onPressed: (){
          showDialog(
              barrierDismissible: false,
              context: context, builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Message"),
              content: Text("Thank You!"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("No")),
                TextButton(onPressed: (){}, child: Text("Yes")),
              ],
            );
          });
        }, child: Text("Show Dialog Box")),
        ),
    );
  }
}
