import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp( color: Colors.white,
      title: 'Settings',
      home: Scaffold( backgroundColor: Colors.white,

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
   return Scaffold(body:
     GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    crossAxisCount: 2,
    children: <Widget>[
    Container(child: Square1()),
      Container(child: Square2()),
      Container(child: Square3()),
      Container(child: Square4()),
      Container(child: Square5()),
      Container(child: Square6()),
      Container(child: Square7()),
      Container(child: Square8()),
       ]));
  }
}
