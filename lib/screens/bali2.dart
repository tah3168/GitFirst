import 'package:flutter/material.dart';


class Bali2 extends StatefulWidget {
  @override
  _Bali2State createState() => _Bali2State();
}

class _Bali2State extends State<Bali2> {
  @override
  Widget build(BuildContext context) {
    return  Text("data");
  }
}
/*
Widget infoPage(a) {
 return Scaffold(
   body: Container(
       child: Stack(
     children: <Widget>[
       Back(),
       Container(
         child: ListView(
           children: <Widget>[
             Column(
               children: <Widget>[
                 imageVacation(a),
                 Container(
                   height: 30,
                 ),
                 IconStatement(),
                 Container(
                   height: 10,
                 ),
                 detailVacation(a),
               ],
             ),
           ],
         ),
       ),
       Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: <Widget>[
             Row(
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.all(15),
                   child: FavoriteButtom(),
                   //FavoriteButtom(),
                   //child: IconStatement(),
                   //child: IconCircle(),
                   //color: Colors.black,
                 ),
                 Container(width: 1),
                 Container(
                   padding: EdgeInsets.all(15),
                   child: ExploreButtom(),
                 ),
               ],
             ),
           ],
         ),
       ),
     ],
   )),
 
   /* */
   floatingActionButton: FloatingActionButton.extended(
     onPressed: () {
       // Add your onPressed code here!
     },
     label: Text(
       '     Book Now     ',
       style: TextStyle(
         fontSize: 18,
       ),
     ),
     //icon: Icon(Icons.thumb_up),
     backgroundColor: Colors.greenAccent,
   ),
 );
}
/*
class Back extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return SafeArea(
         child: RaisedButton(
       onPressed: (){
         Navigator.pop(context);
       },
       child: ,
     ),
   );
 }
}
*/
 
class Back extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
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
                       builder: (BuildContext context) => HomePage());
                   Navigator.of(context).push(materialPageRoute);
                 }
               )
             )
           ),
   );
 }
}
 
Widget imageVacation(int a) {
 return Card(
   child: Container(
     height: 500,
     //height: MediaQuery.of(context).size.height * 0.25,
     decoration: BoxDecoration(
       image: DecorationImage(
         image: NetworkImage(imageString[a]),
         fit: BoxFit.cover,
       ),
       borderRadius: BorderRadius.circular(40),
       /*  borderRadius: BorderRadius.only(
         bottomLeft: Radius.circular(48),
         bottomRight: Radius.circular(48),
       ),*/
     ),
 
     /**/ child: Container(
       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.end,
         children: <Widget>[
           /*  */
           Row(
             children: <Widget>[
               Text(
                 'USD ',
                 style: TextStyle(
                   fontSize: 20,
                   color: Colors.white,
                 ),
               ),
               Text(
                 price[a],
                 style: TextStyle(
                   fontSize: 20,
                   color: Colors.white,
                 ),
               ),
             ],
           ),
           Container(
             height: 20,
             //color: Colors.black,
           ),
           Row(
             children: <Widget>[
               Text(
                 getourintonew[a],
                 style: TextStyle(
                   fontSize: 25,
                   color: Colors.white,
                 ),
               ),
             ],
           ),
           Row(
             children: <Widget>[
               Text(
                 place[a],
                 style: TextStyle(
                     fontSize: 25,
                     color: Colors.white,
                     fontWeight: FontWeight.bold),
               ),
             ],
           ),
           Container(
             height: 60,
             //color: Colors.black,
           ),
 
           /*
             Container(
               height: 60,
               //color: Colors.black,
             ),
             */
 
           /*
             Container(
               //padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
               //width: MediaQuery.of(context).size.width * 0.76,
               //height: MediaQuery.of(context).size.height * 0.08,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.end,
                 mainAxisSize: MainAxisSize.max,
                 children: <Widget>[
                   Text(price[a],style: TextStyle(fontSize: 20,color: Colors.white,),),
                   Text(getourintonew[a],style: TextStyle(fontSize: 25,color: Colors.white,),),
                   Text(place[a],style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                
                 ],
               ),
             ),
             */
         ],
       ),
     ),
   ),
   shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(40),
   ),
   //elevation: 8,
 );
}
 
Widget detailVacation(int a) {
 return Container(
   padding: EdgeInsets.symmetric(
     horizontal: 16,
   ),
   //height: MediaQuery.of(context).size.height * 0.32,
   child: Container(
     child: Padding(
       padding: const EdgeInsets.all(15.0),
       child: Column(
         children: <Widget>[
           Padding(padding: const EdgeInsets.all(15)),
           Text(
             detail[a],
             style: TextStyle(color: Colors.grey),
           ),
         ],
       ),
     ),
   ),
 );
}
 
class IconCircle extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Row(
     mainAxisSize: MainAxisSize.min,
     children: <Widget>[
       FlatButton(
         //color: Colors.white,
         onPressed: () {
           var rount = MaterialPageRoute(
               builder: (BuildContext contex) => ComingSoon());
           Navigator.of(context).push(rount);
         },
         child: Column(
           children: <Widget>[
             IconButton(
               icon: Icon(Icons.verified_user),
               //tooltip: 'Verified User',
               onPressed: null,
             ),
             //Text('Verified'),
             //Text('User')
           ],
         ),
       ),
       /**/
 
       Container(
         width: 20,
       ),
       FlatButton(
         //color: Colors.white,
         onPressed: () {
           var rount = MaterialPageRoute(
               builder: (BuildContext contex) => ComingSoon());
           Navigator.of(context).push(rount);
         },
         child: Column(
           children: <Widget>[
             IconButton(
               icon: Icon(Icons.assignment),
               //tooltip: 'Roadtip Plan',
               onPressed: null,
             ),
             //Text('Roadtip'),
             //Text('Plan')
           ],
         ),
       ),
       /**/
 
       Container(
         width: 20,
       ),
     ],
   );
 }
}
 
//stless Iconstate
class IconStatement extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Row(
     mainAxisSize: MainAxisSize.min,
     children: <Widget>[
       FlatButton(
         //color: Colors.white,
         onPressed: () {
           var rount = MaterialPageRoute(
               builder: (BuildContext contex) => ComingSoon());
           Navigator.of(context).push(rount);
         },
         child: Column(
           children: <Widget>[
             IconButton(
               icon: Icon(Icons.verified_user),
               tooltip: 'Verified User',
               onPressed: null,
             ),
             Text('Verified'),
             Text('User')
           ],
         ),
       ),
       /**/
 
       Container(
         width: 20,
       ),
       FlatButton(
         //color: Colors.white,
         onPressed: () {
           var rount = MaterialPageRoute(
               builder: (BuildContext contex) => ComingSoon());
           Navigator.of(context).push(rount);
         },
         child: Column(
           children: <Widget>[
             IconButton(
               icon: Icon(Icons.assignment),
               tooltip: 'Roadtip Plan',
               onPressed: null,
             ),
             Text('Roadtip'),
             Text('Plan')
           ],
         ),
       ),
       /**/
 
       Container(
         width: 20,
       ),
       FlatButton(
         //color: Colors.white,
         onPressed: () {
           var rount = MaterialPageRoute(
               builder: (BuildContext contex) => ComingSoon());
           Navigator.of(context).push(rount);
         },
         child: Column(
           children: <Widget>[
             IconButton(
               icon: Icon(Icons.fastfood),
               tooltip: 'Breakfast Included',
               onPressed: null,
             ),
             Text('Breakfast'),
             Text('Included')
           ],
         ),
       ),
     ],
   );
 }
}
 
class FavoriteButtom extends StatelessWidget {
 //MyStatelessWidget({Key key}) : super(key: key);
 
 @override
 Widget build(BuildContext context) {
   return Center(
     child: Ink(
       decoration: const ShapeDecoration(
         color: Color(0xffffcdd2),
         shape: CircleBorder(),
       ),
       child: IconButton(
         icon: Icon(Icons.favorite),
         color: Colors.red,
         onPressed: () {},
       ),
     ),
   );
 }
}
 
class ExploreButtom extends StatelessWidget {
 //MyStatelessWidget({Key key}) : super(key: key);
 
 @override
 Widget build(BuildContext context) {
   return Center(
     child: Ink(
       decoration: const ShapeDecoration(
         color: Colors.blue,
         shape: CircleBorder(),
       ),
       child: IconButton(
         icon: Icon(Icons.explore),
         color: Colors.white,
         onPressed: () {},
       ),
     ),
   );
 }
}
 
class ComingSoon extends StatefulWidget {
 @override
 _ComingSoonState createState() => _ComingSoonState();
}
 
class _ComingSoonState extends State<ComingSoon> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Text(
         'C o m i n g S o o n',
       ),
     ),
   );
 }
}
 
class Test extends StatefulWidget {
 @override
 _TestState createState() => _TestState();
}
 
class _TestState extends State<Test> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Text(imageString[a]),
     ),
   );
 }
}
 
class MyStatelessWidget_2 extends StatelessWidget {
 bool _lights = false;
 @override
 Widget build(BuildContext context) {
   return Container(
     alignment: FractionalOffset.center,
     color: Colors.white,
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Icon(
             Icons.lightbulb_outline,
             color: _lights ? Colors.yellow.shade600 : Colors.black,
             size: 30,
           ),
         ),
         GestureDetector(
           onTap: () {
             setState(() {
               _lights = true;
             });
           },
           /**/ child: Container(
             color: Colors.yellow.shade600,
             padding: const EdgeInsets.all(8),
             child: const Text('TURN LIGHTS ON'),
           ),
         ),
       ],
     ),
   );
 }
 
 void setState(Function() param0) {}
}
 


 */