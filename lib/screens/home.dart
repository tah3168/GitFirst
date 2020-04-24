//import 'dart:html';
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:neww/screens/bali.dart';
import 'package:neww/screens/bali2.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showDiscover() {
    return new Container(
        //    alignment: Alignment.centerLeft,
        child: new Text("\n\t\t\t\t\t\tDiscover\t",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)));
  }

  Widget arrowback() {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      color: Colors.grey,
      onPressed: () {},
    );
  }
 


  //method
  Widget moreIcon() {
    return IconButton(
      icon: const Icon(Icons.more_horiz),
      color: Colors.grey,
      onPressed: () {},
    );
  }


  Widget appbarIm() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
            onTap: () {
              print('Click Profile Pic');
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'images/woman.png',
                height: 30,
                width: 30,
              ),
            ))
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.grey,
            onPressed: () {},
          ),
          title: appbarIm(),
          actions: <Widget>[
            moreIcon(),
          ],
        ),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(8),

            // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              /* showText(),
              showMorethan(),*/
              Container(
                   padding: EdgeInsets.only(left: 25),
                child: RichText(
                  text: TextSpan(
                    text: 'Discover',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' new adventures',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          // fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                 padding: EdgeInsets.only(left: 25),
                child: RichText(
                  text: TextSpan(
                    text: '\nMore than 50 new adventures',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),

              Container(
                width: media.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.only(top: 20),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: media.width,
                      height: 200,
                      child: InkWell(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              'images/bali.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          onTap: () {
                            //---------------------------------------------------
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> Bali(),));
                          }),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 50,
                        width: media.width / 1.32,
                        margin: EdgeInsets.only(
                          left: media.width / 10,
                          right: media.width / 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Center(
                            child:
                                /*Text(
                            'Kuay1',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),*/
                                RichText(
                          text: TextSpan(
                            text: 'Bali',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ', Indonesia',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  // fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: media.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.only(top: 20),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: media.width,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/bali.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 50,
                        width: media.width / 1.32,
                        margin: EdgeInsets.only(
                          left: media.width / 10,
                          right: media.width / 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Center(
                            child: RichText(
                          text: TextSpan(
                            text: 'Loire Valley',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ', France',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  // fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: media.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.only(top: 20),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: media.width,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/bali.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 50,
                        width: media.width / 1.32,
                        margin: EdgeInsets.only(
                          left: media.width / 10,
                          right: media.width / 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Center(
                            child: RichText(
                          text: TextSpan(
                            text: 'Tiputini River',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ', Ecuador',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  // fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              // valleyy(),
              //  riverr(),
            ],
          ),
        ));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bali(),
    );
  }
}

class Valley extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Valley(),
    );
  }
}

class River extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: River(),
    );
  }
}
