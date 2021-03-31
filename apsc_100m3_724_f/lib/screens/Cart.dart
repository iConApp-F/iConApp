import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'MyGlobals.dart' as gl;

class CartView extends StatefulWidget {
  CartViewWidget createState() => CartViewWidget();
}

class CartViewWidget extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Cart', style: Theme.of(context).textTheme.headline2),
          ),
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
