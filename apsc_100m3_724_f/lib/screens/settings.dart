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

class Square extends StatelessWidget {
  final color;
  final sqwidth;
  final sqheight;

  Square({ this.color = Colors.blue, this.sqwidth = 105.0, this.sqheight = 100.0,})

  {}build(context){
    return Container(
      //decoration: BoxDecoration(color: Colors.blue),
      width: sqwidth,
      height: sqheight,
      color: color,
      child: Icon(Icons.flare, color: Colors.orange,)
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
          child:Square()
        ),
        Positioned(
          top:86,
          left:129,
          child: Square(),
        ),
        Positioned(
          child: Square(),
          top: 86,
          right: 0,
        ),
        Positioned(
          child: Square(sqwidth: 169.5 ),
          top: 225,
        ),
        Positioned(
          child: Square(sqwidth: 169.5),
          top: 225,
          right: 0,
        ),
        Positioned(
          child: Square(sqwidth: 169.5),
          top: 368,
          left: 0,
        ),
        Positioned(
          child: Square(sqwidth: 169.5),
          top: 368,
          right: 0,
        ),
        Positioned(
          child: Square(sqwidth: 300.0, sqheight: 60.0),
          top: 511,
          right: 32.5,
        ),

      ],
      )
    );
  }
}
