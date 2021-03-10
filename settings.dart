import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
      title: Text('Settings'),
    ),
      body: Center(child: ElevatedButton(onPressed: (){}, child: new Text('Go back!'),),),);
  }
}