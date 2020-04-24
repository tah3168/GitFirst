import 'package:flutter/material.dart';
//import 'package:neww/screens/home.dart';

class River extends StatefulWidget {
  @override
  _RiverState createState() => _RiverState();
}

class _RiverState extends State<River> {
  Widget fuck() {
    return Image.asset('images/river.jpg');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
          title: Text("Kuay"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.grey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
        ),*/
        body: SafeArea(
            child: Column(
          children: <Widget>[
            fuck(),
          ],
        )));
  }
}
