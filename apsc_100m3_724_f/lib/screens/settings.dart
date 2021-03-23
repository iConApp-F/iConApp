import 'package:flutter/material.dart';
import 'hours.dart';
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
   return Scaffold(appBar: AppBar(title: Text('iCons'),
       actions: <Widget>[IconButton(icon: Image.asset('lib/images/gear.png'),
           onPressed: () {print('Go to Equipment');
             // or use: context, MaterialPageRoute(builder: (context) => SecondRoute()),
           })],
       leading: IconButton(
         icon: Image.asset('lib/images/app_swirl.png'), onPressed: (){},
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
       body:
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
