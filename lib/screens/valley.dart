import 'package:flutter/material.dart';
import 'package:neww/screens/home.dart';

class Valley extends StatefulWidget {
  @override
  _ValleyState createState() => _ValleyState();
}

class _ValleyState extends State<Valley> {
  Widget fuck() {
    return Image.asset('images/valley.jpg');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
          children: <Widget>[
            fuck(),
          ],
        )));
  }
}
