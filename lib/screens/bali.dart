import 'package:flutter/material.dart';
import 'package:neww/screens/home.dart';

class Bali extends StatefulWidget {
  @override
  _BaliState createState() => _BaliState();
}

class _BaliState extends State<Bali> {
  Widget rowIcon() {
    return Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.verified_user,
              color: Colors.grey,
              size: 30.0,
            ),
            Icon(
              Icons.assignment,
              color: Colors.grey,
              size: 30.0,
            ),
            Icon(
              Icons.fastfood,
              color: Colors.grey,
              size: 30.0,
            )
          ],
        ));
  }

  Widget back() {
    return Container(
      child: Positioned(
          top: 0,
          left: 0,
          child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.all(Radius.circular(500)),
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    MaterialPageRoute materialPageRoute = MaterialPageRoute(
                        builder: (BuildContext context) => Home());
                    Navigator.of(context).push(materialPageRoute);
                  }))),
    );
  }

  Widget imageVacation() {
    return Card(
      child: Container(
        height: 450,
        //height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://travelingera.com/wp-content/uploads/2019/05/Bali.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(500),
                      topRight: Radius.circular(500),
                      bottomLeft: Radius.circular(500),
                      bottomRight: Radius.circular(500),
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      MaterialPageRoute materialPageRoute = MaterialPageRoute(
                          builder: (BuildContext context) => Home());
                      Navigator.of(context).push(materialPageRoute);
                    },
                  ),
                ),
              ),
              Positioned(
                  left: 20,
                  bottom: 70,
                  child: Container(
                    child: RichText(
                      text: TextSpan(
                        text: "USD",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: '995'),
                          TextSpan(
                            text: '\n\nGet our into new',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '\nSea Heaven in Bali',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              // fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 10,
                  left: 20,
                  child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            //  print('Click Profile Pic');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'images/woman.png',
                              height: 30,
                              width: 30,
                            ),
                          ))
                    ],
                  )),
              Positioned(
                  left: 100,
                  bottom: 20,
                  child: Container(
                    child: RichText(
                      text: TextSpan(
                        text: 'Sofie,Lauren + 13 more',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 10,
                  left: 40,
                  child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            print('Click Profile Pic');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'images/woman.png',
                              height: 30,
                              width: 30,
                            ),
                          ))
                    ],
                  )),
            ],
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }

  Widget rowText() {
    return Container(
        margin: const EdgeInsets.only(top: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Verifed\nUser',
              textAlign: TextAlign.center,
            ),
            Text('Roadtrip\nPlan', textAlign: TextAlign.center),
            Text('Breakfast\nIncluded', textAlign: TextAlign.center),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
          children: <Widget>[
            imageVacation(),
            rowIcon(),
            rowText(),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text(
                "The Tourism describes how to visit There, where to Stay, top-rated Hotels & Restaurants, Map, what is Bali like for a holiday, best things to do & Best Travel guide. The most Popular Traveling place in the World which is located in Indonesia. To get the best feelings with Sea beach, It makes you enjoyed likewise a Heaven. To pass your time with nature, if you find such a place, then it will be perfect for you where you can watch nature activity. You can also provide The nature of Bali’s Tourism, To get full information about There, read the below.",
                textAlign: TextAlign.start,
              ),
            ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              /*  FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.favorite,color: Colors.redAccent[700],),
                backgroundColor:  Colors.deepOrange[200],
                elevation: 10,
                 shape: CircleBorder(side: BorderSide(color: Colors.deepOrange[300], width: 2.0)),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.navigation,color: Colors.indigo[900],),
                backgroundColor:  Colors.indigo[100],
                elevation: 10,
                shape: CircleBorder(side: BorderSide(color: Colors.indigo[900], width: 2.0)),
                
              ),*/

              FloatingActionButton.extended(
                elevation: 10,
                onPressed: () {},
                label: Text(
                  '    BOOK NOW    ',
                  style: TextStyle(
                      color: Colors.greenAccent[400],
                      fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.teal[100],
                shape: StadiumBorder(
                    side: BorderSide(color: Colors.green, width: 2.0)),
              ),
            ],
          ),
        ));
  }
}
