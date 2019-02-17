import 'package:flutter/material.dart';

class MainSc extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Hone')
            ),
          body: TabBarView(
            children: [
              Container(child:Center(child: new Text('Home'))),
              Container(child:Center(child: new Text('Notify'))),
              Container(child:Center(child: new Text('Map'))),
              Container(child:Center(child: new  Text('Profile'))),
              Container(child:Center(child: new  Text('Setup'))),
            ],
          ),
          backgroundColor: Colors.blue,
          bottomNavigationBar: new TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.dashboard)),
                  Tab(icon: Icon(Icons.notifications)),
                  Tab(icon: Icon(Icons.explore)),
                  Tab(icon: Icon(Icons.person)),
                  Tab(icon: Icon(Icons.settings)),
                  ],
            ),
          ),
        ),
      );
    }
}