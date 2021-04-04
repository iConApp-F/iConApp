import 'package:flutter/material.dart';
import 'dart:convert';
import 'MyGlobals.dart' as gl;
import 'hours.dart';

class CartView extends StatefulWidget {
  CartViewWidget createState() => CartViewWidget();
}

class CartViewWidget extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Cart'),
          actions: <Widget>[IconButton(icon: Image.asset('lib/images/gear.png'), onPressed:(){Navigator.pushNamed(context, '/settings');
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
          body: ListView.builder(
              itemCount: gl.MyGlobals.toBeRented.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(gl.MyGlobals.toBeRented[index].Name + ": 1"),
                );
              })),
    );
  }
}
