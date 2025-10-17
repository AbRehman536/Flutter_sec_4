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
          Text("Click on Button to open Bottom Sheet"),
          ElevatedButton(onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const Column(children: [
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text("Email"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.lock),
                      title: Text("Password"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Logout"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Icon(Icons.favorite),
                      Icon(Icons.comment),
                      Icon(Icons.share),
                      Icon(Icons.copy),
                    ],)
                  ],);
                });
          }, child: Text("Click Me"))
        ],),
      ),
    );
  }
}
