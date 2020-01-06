import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Text('Home Page',
        style: new TextStyle(fontSize: 25.0, color: Colors.purple),
        ),
      ),
    );
  }
}