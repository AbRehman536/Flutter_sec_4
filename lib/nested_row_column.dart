import 'package:flutter/material.dart';

class NestedRowColumnDemo extends StatelessWidget {
  const NestedRowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        //foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.red,size: 30.5,),
        title: Text("ROW COLUMN NESTED",style: TextStyle(
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
      body: Column(children: [
        SizedBox(height: 20,),
        Text("Lorem Ipsum",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
        SizedBox(height: 15,),
        Text("Printers in the 1500s scrambled the words from Cicero's De Finibus Bonorum et Malorum'' after mixing the words in each sentence. The familiar lorem ipsum dolor sit amet text emerged when 16th-century printers adapted Ciceros original work, beginning with the phrase dolor sit amet consectetur."),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
          Icon(Icons.favorite),
          Column(children: [
            Icon(Icons.comment),
            Icon(Icons.car_crash),
          ],),
          Icon(Icons.bookmark),
          Column(
            children: [
              Icon(Icons.share),
              Icon(Icons.notifications),
            ],
          ),
        ],)
      ],),
    );
  }
}
