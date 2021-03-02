import 'package:flutter/material.dart';
import 'TextInputWidget.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("hello"),),
    body: Column(children: <Widget>[TextInputWidget(),Text(this.text)],),);
  }
}
