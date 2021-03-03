import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BodyWidget();
  }
}
class Palette {
  // background gradient
  static Color iBrown = Color(0xFF8E3A37);
  static Color iGreen = Color(0xFF0D924E);
  static Color iBlue = Color(0xFF0B426B);
  //Others
  static Color greenLandLight = Color(0x4089ED91);

  static Color blueSkyLighter = Color(0x10068FFA);
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(appBar: AppBar(title: Text('iCons'),
            leading: IconButton(
              icon: Image.asset('images/app_swirl.png'), onPressed: (){},
            ),
            flexibleSpace: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Palette.iBrown, Palette.iGreen, Palette.iBlue]),))),
          body: Center(child: Column( mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[Expanded( child:
            Container( padding: EdgeInsets.all(20), child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[ Expanded( child: Container(
      padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [Palette.iGreen, Palette.iBlue]),
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(10.0))
    ),
    child: new Align( alignment: Alignment.topCenter,
    child: new Column(children: <Widget>[
      RichText( textAlign: TextAlign.center, text: TextSpan( children: <TextSpan>[
        TextSpan(text: "Hours", style: TextStyle(color: Colors.white, fontSize: 40.0, letterSpacing: 2, fontWeight: FontWeight.bold),),
        TextSpan(text: "\n\n\n\nILC", style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),),
        TextSpan(text: "\n\nMonday to Thursday", style: TextStyle(color: Colors.white, fontSize: 25.0),),
        TextSpan(text: "\n\n5:30 PM - 11:00 PM", style: TextStyle(color: Colors.white, fontSize: 20.0),),
        TextSpan(text: "\n\nSaturday", style: TextStyle(color: Colors.white, fontSize: 25.0),),
        TextSpan(text: "\n\n11:30 AM - 7:00 PM", style: TextStyle(color: Colors.white, fontSize: 20.0),),
        TextSpan(text: "\n\nSunday", style: TextStyle(color: Colors.white, fontSize: 25.0),),
        TextSpan(text: "\n\n11:30 AM - 11:00 PM", style: TextStyle(color: Colors.white, fontSize: 20.0),),
        TextSpan(text: "\n\n\n\nStirling Hall", style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),),
        TextSpan(text: "\n\nMonday to Thursday", style: TextStyle(color: Colors.white, fontSize: 25.0),),
        TextSpan(text: "\n\n5:30 PM - 11:00 PM", style: TextStyle(color: Colors.white, fontSize: 20.0),)
    ]),
    )]))))],
          ),)
          )])))
    );
  }
}