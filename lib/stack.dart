import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Stack(children: [
        Image.asset("assets/images/Frame.png"),
        Padding(
          padding: const EdgeInsets.only(top: 450.0,left: 50),
          child: Text("My App Stack",style: GoogleFonts.kronaOne(
            fontSize: 30,
            fontWeight: FontWeight.w900,
              color: Color(0xff4F1F15),
          ),
        )),
        Padding(
          padding: const EdgeInsets.only(top: 500.0,left: 50),
          child: Icon(Icons.app_blocking,size: 40,color: Color(0xff4F1F15),),
        ),
        ElevatedButton(onPressed: (){}, child: Text("Button"))
      ],),
    );
  }
}
