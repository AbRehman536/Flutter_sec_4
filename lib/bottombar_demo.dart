import 'package:flutter/material.dart';
import 'package:flutter_sec_4/grid_view.dart';
import 'package:flutter_sec_4/login_form.dart';
import 'package:flutter_sec_4/multiple_selection.dart';

class BottombarDemo extends StatefulWidget {
  const BottombarDemo({super.key});

  @override
  State<BottombarDemo> createState() => _BottombarDemoState();
}

class _BottombarDemoState extends State<BottombarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList = [GridViewDemo(),MultipleSelectionDemo(),LoginForm()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]),

    );
  }
}
