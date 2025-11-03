import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: Icon(Icons.arrow_back),
          title: Text("Tab Bar Demo"),
          bottom: TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.red,
              indicatorColor: Colors.black,
              tabs: [
            Tab(icon: Icon(Icons.home), text: "Home",),
            Tab(icon: Icon(Icons.person), text: "Profile",),
            Tab(icon: Icon(Icons.settings), text: "Settings",),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Column(children: [
            Image.asset("assets/images/1348431.png"),
            Text("Home")
          ],),),
          Center(child: Column(children: [
            Icon(Icons.person),
            Text("Fahad")
          ],),),
          Center(child: Column(children: [
            Text("Settings")
          ],),)
        ]),
      ),
    );
  }
}
