import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/reminders.dart';
import 'package:myapp/pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
 @override
 Widget build(BuildContext context) {
  return new MaterialApp(
    theme: new ThemeData(
      primarySwatch: Colors.teal,
    ),
    home: new MyHomePage(),
  );
}
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      title: new Text('Ration App'),
      backgroundColor: Colors.teal,
    ),
    bottomNavigationBar: new Material(
        color: Colors.teal,
        child: new TabBar(
        controller: controller,
        tabs: <Widget>[
          new Tab(icon: new Icon(Icons.home)),
          new Tab(icon: new Icon(Icons.settings)),
          new Tab(icon: new Icon(Icons.alarm)),
        ],
        )
      ),
    body: new TabBarView(
      controller: controller,
      children: <Widget>[
        new Home(),
        new Settings(),
        new Reminders(),
      ],
    ),
    );
  }
}