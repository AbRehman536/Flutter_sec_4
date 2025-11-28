import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sec_4/grid_view.dart';
import 'package:flutter_sec_4/login_form.dart';
import 'package:flutter_sec_4/multiple_selection.dart';

class CurvedbarDemo extends StatefulWidget {
  const CurvedbarDemo({super.key});

  @override
  State<CurvedbarDemo> createState() => _CurvedbarDemoState();
}

class _CurvedbarDemoState extends State<CurvedbarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList = [GridViewDemo(),MultipleSelectionDemo(),LoginForm()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue,
        buttonBackgroundColor: Colors.green,
        color: Colors.yellow,
        onTap: (value){
          selectedIndex = value;
        },
          items: [
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.settings),
          ])

    );
  }
}
