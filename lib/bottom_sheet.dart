import 'package:flutter/material.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Bottom Sheet"),
        actions: [
          Icon(Icons.notification_add_outlined),
          Icon(Icons.settings),
        ],
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child:
        ElevatedButton(onPressed: (){
          showModalBottomSheet(
              context: context,
            builder: (BuildContext context) {
                return Column(children: [
                  Card(
                    color: Colors.yellow,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    color: Colors.blue,
                    child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    color: Colors.green,
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Logout"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],);
            },
              );
        }, child: Text("Show Bottom Sheet"))
        ,)
    );
  }
}
