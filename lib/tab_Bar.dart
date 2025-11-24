import 'dart:js_interop';

import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.red,
                    indicator: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(icon: Icon(Icons.home),text: "Home",),
                      Tab(icon: Icon(Icons.settings),text: "Setting",),
                      Tab(icon: Icon(Icons.person),text: "Profile",),
                    ]),
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          Center(child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.home),
                  hint: Text("Home")
                ),
              ),
            )
          ],),),
          Center(child: Column(children: [
            Image.asset("assets/images/Frame.png"),
            Text("Settings"),
          ],),),
          Center(child: Column(children: [
            Icon(Icons.person, size: 50,),
            Text("Abdullah Rehman")
          ],),),
        ]),
      ),
    );
  }
}
