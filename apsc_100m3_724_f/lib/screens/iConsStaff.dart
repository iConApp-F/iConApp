import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new iConStaffScreen(), //indicates which screen will be opened at launch
    );
  }
}
class iConStaffScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //title of the screen
          title: new Text('iCons Staff')
      ),
      //run the code that makes the widget for each staff member
      body: Staff(),
    );
  }
}

//add the names and programs of the staff
var names = ['iCon Staff 1','iCon Staff 2','iCon Staff 3','iCon Staff 4','iCon Staff 5','iCon Staff 6','iCon Staff 7','iCon Staff 8','iCon Staff 9','iCon Staff 10'];
var program = ['Computer Engineering', 'Mechanical Engineering','Engineering Physics','Civil Engineering','Computer Engineering','Electrical Engineering','Chemical Engineering','Computer Engineering','Mechanical Engineering','Computer Engineering','Electrical Engineering'];
var num = [0,1,2,3,4,5,6,7,8,9];
//a variable used to idenitfy which icon member has been clicked
var c;

//change the font size of the staff names
var namefontsize = 18.0;
//change the size of the images of the staff
var imagesize = 40.0;
//For each iCon staff widget
class Staff extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        body: ListView(
            padding: const EdgeInsets.all(8),
            //used to create the widgets of each staff member
            children: new List.generate(
              //make a widget for each name
                names.length,
                    (index) => new ListTile(
                  //add an image for each icon
                    leading: CircleAvatar(
                      //child: Image.asset('assets/images/Person.jpg', width: 250, height: 250),
                      radius: imagesize,
                    ),
                    //add the name of the iCon
                    title: Text(names[index], style: TextStyle(fontSize: namefontsize)),
                    //add their program
                    subtitle: Text(program[index]),
                    trailing: SizedBox.fromSize(
                        size: Size(90, 48),
                        //add the button
                        child: ClipRect(
                            child: ElevatedButton(
                                child: Text('MORE'),
                                //when the button is clicked, set the index value to c and go to teh icon two page
                                onPressed: () {
                                  c = num[index];
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(builder: (context) => new iConTwoPage()),
                                  );
                                }
                            )
                        )
                    )
                )
            )
        )
      );
  }
}
class iConTwoPage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
          //add the icon name to the top of the screen
          title: new Text(names[c]),
        ),
        //run the code that oranizes teh page
        body: IndividualBodyWidget(),
      );
   }
}
class IndividualBodyWidget extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return ListView(
      children: <Widget>[
        //add spacing between top of screen and image
        SizedBox(height: 30),
        //add image
       // Image.asset('assets/images/Person.jpg', width: 250, height: 250),
        SizedBox(height: 20),
        //add name of icon clicked
        Text(names[c], style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
        //add program of icon clicked
        Text(program[c], style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
        SizedBox(height: 10),
        Text('"Short biography.........."', style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic), textAlign: TextAlign.center)
      ]
    );
  }
}
