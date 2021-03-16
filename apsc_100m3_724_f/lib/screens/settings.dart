import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings',
      home: Scaffold(

          body: Container(
            margin: EdgeInsets.all(24.0),
            decoration: BoxDecoration(color: Colors.white),
            child: Demo(),
          )
      ),
    );
  }
}

class Square1 extends StatelessWidget {
  final color;
  final sqwidth;
  final sqheight;

  Square1({ this.color = Colors.white,
    this.sqwidth = 105.0,
    this.sqheight = 100.0,})

  {}build(context){
    return Container(
      width: sqwidth,
      height: sqheight,
      color: color,
      child: OutlinedButton.icon(
          icon: Icon(Icons.text_fields_rounded),
          label: Text(("small\n font\n")),
          onPressed: (){
            print('Small Font');
          }
      ),
    );
  }
}

class Square2 extends StatelessWidget {
  final color;
  final sqwidth;
  final sqheight;

  Square2({ this.color = Colors.white,
    this.sqwidth = 105.0,
    this.sqheight = 100.0,})

  {}build(context){
    return Container(
      width: sqwidth,
      height: sqheight,
      color: color,
      child: OutlinedButton.icon(
          icon: Icon(Icons.text_fields_rounded),
          label: Text(
              "Medium\n font\n",
              style: new TextStyle(
                fontSize: 11,
              )
          ),
          onPressed: (){
            print('Medium Font');
          }
      ),
    );
  }
}

class Square3 extends StatelessWidget {
  final color;
  final sqwidth;
  final sqheight;

  Square3({ this.color = Colors.white,
    this.sqwidth = 105.0,
    this.sqheight = 100.0,})

  {}build(context){
    return Container(
      width: sqwidth,
      height: sqheight,
      color: color,
      child: OutlinedButton.icon(
          icon: Icon(Icons.text_fields_rounded),
          label: Text(
            "Large\n Font\n" ,
            style: new TextStyle(
              fontSize: 13.0,
            ),
          ),
          onPressed: (){
            print('Large Font');
          }
      ),
    );
  }
}

class Square4 extends StatelessWidget {
  final color;
  final sqwidth;
  final sqheight;

  Square4({ this.color = Colors.white,
    this.sqwidth = 105.0,
    this.sqheight = 100.0,})

  {}build(context){
    return Container(
      width: sqwidth,
      height: sqheight,
      color: color,
      child: OutlinedButton.icon(
          icon: Icon(Icons.nightlight_round),
          label: Text(("Dark Mode")),
          onPressed: (){
            print('Dark Mode');
          }
      ),
    );
  }
}

class Square5 extends StatelessWidget {
  final color;
  final sqwidth;
  final sqheight;

  Square5({ this.color = Colors.white,
    this.sqwidth = 105.0,
    this.sqheight = 100.0,})

  {}build(context){
    return Container(
      width: sqwidth,
      height: sqheight,
      color: color,
      child: OutlinedButton.icon(
          icon: Icon(Icons.wb_sunny),
          label: Text(("Light Mode")),
          onPressed: (){
            print('Light Mode');
          }
      ),
    );
  }
}

class Square6 extends StatelessWidget {
  final color;
  final sqwidth;
  final sqheight;

  Square6({ this.color = Colors.white,
    this.sqwidth = 105.0,
    this.sqheight = 100.0,})

  {}build(context){
    return Container(
      width: sqwidth,
      height: sqheight,
      color: color,
      child: OutlinedButton.icon(
          icon: Icon(Icons.volume_off),
          label: Text(("Volume off")),
          onPressed: (){
            print('Volume off');
          }
      ),
    );
  }
}

class Square7 extends StatelessWidget {
  final color;
  final sqwidth;
  final sqheight;

  Square7({ this.color = Colors.white,
    this.sqwidth = 105.0,
    this.sqheight = 100.0,})

  {}build(context){
    return Container(
      width: sqwidth,
      height: sqheight,
      color: color,
      child: OutlinedButton.icon(
          icon: Icon(Icons.volume_up),
          label: Text(("Volume On")),
          onPressed: (){
            print('Volume On');
          }
      ),
    );
  }
}

class Square8 extends StatelessWidget {
  final color;
  final sqwidth;
  final sqheight;

  Square8({ this.color = Colors.white,
    this.sqwidth = 105.0,
    this.sqheight = 100.0,})

  {}build(context){
    return Container(
      //decoration: BoxDecoration(color: Colors.red),
      width: sqwidth,
      height: sqheight,
      color: color,
      child: OutlinedButton.icon(
          icon: Icon(Icons.description_outlined),
          label: Text(("Credits")),
          onPressed: (){
            print('Credits');
          }
      ),
    );
  }
}


class Demo extends StatelessWidget{
  build(context){
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
                top:86,
                child:Square1()
            ),
            Positioned(
              top:86,
              left:129,
              child: Square2(),
            ),
            Positioned(
              child: Square3(),
              top: 86,
              right: 0,
            ),
            Positioned(
              child: Square4(sqwidth: 170.0 ),
              top: 225,
            ),
            Positioned(
              child: Square5(sqwidth: 170.0),
              top: 225,
              right: 0,
            ),
            Positioned(
              child: Square6(sqwidth: 170.0),
              top: 368,
              left: 0,
            ),
            Positioned(
              child: Square7(sqwidth: 170.0),
              top: 368,
              right: 0,
            ),
            Positioned(
              child: Square8(sqwidth: 300.0, sqheight: 60.0),
              top: 511,
              right: 32.5,
            ),

          ],
        )
    );
  }
}