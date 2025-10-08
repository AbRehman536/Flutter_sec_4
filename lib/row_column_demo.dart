import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        //foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.red,size: 30.5,),
        title: Text("ROW COLUMN DEMO",style: TextStyle(
            color: Colors.purple,
            fontSize: 30.5,
            fontWeight: FontWeight.w100
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notification_add,color: Colors.yellow,size: 50,),
          Icon(Icons.bookmark,color: Colors.green,size: 45,),
        ],
      ),
      body: Container(
        color: Colors.yellow,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Abdullah Rehman"),
          Text("25"),
          Text("Rawalpindi"),
          Text("034012345678"),
        ],),
      ),
    );
  }
}
