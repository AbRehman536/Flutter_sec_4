import 'package:flutter/material.dart';
import 'package:flutter_sec_4/providers/screen_2.dart';
import 'package:flutter_sec_4/providers/user.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child: ElevatedButton(onPressed: (){
        userProvider.setName("Ahmed");
        userProvider.setEmail("ahmed@gmail.com");
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
      }, child: Text("Screen 2")),),
    );
  }
}
