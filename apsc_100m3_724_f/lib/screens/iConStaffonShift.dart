import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new iConStaffOnShiftScreen(), //indicates which screen will be opened at launch
    );
  }
}
class iConStaffOnShiftScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //title of the screen
          title: new Text('iCons Staff on Shift')
      ),
      //run the code that makes the widget for each staff member
      body: onShiftBodyWidget(),
    );
  }
}
//names and programs of the corresponding staff on shift
//will need to be updated depending on who is working
var OnShiftnames = ['iCon Staff 1','iCon Staff 3','iCon Staff 5','iCon Staff 6','iCon Staff 5','iCon Staff 6','iCon Staff 7'];
var OnShiftprogram = ['Computer Engineering', 'Mechanical Engineering','Engineering Physics','Civil Engineering','Computer Engineering','Electrical Engineering','Chemical Engineering','Computer Engineering','Mechanical Engineering','Computer Engineering','Electrical Engineering'];
var OnShiftnum = [0,1,2,3,4,5,6,7,8,9];
//set as the value of index when button is clicked to tell which name to use in the individual icon screen
var k;

//change the font size of the staff names
var namefontsize = 18.0;
//change the size of the images of the staff
var imagesize = 40.0;
//For each iCon staff widget
class onShiftBodyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //make a list view
    return new Scaffold(body: ListView(
        padding: const EdgeInsets.all(8),
        //generate the list of the iCons on shift
        children: new List.generate(
            OnShiftnames.length,
                (index) => new ListTile(
                  //have their image
                    leading: CircleAvatar(
                      //child: Image.asset('assets/images/Person.jpg', width: 250, height: 250),
                      radius: imagesize,
                    ),
                    //add the name of the iCon
                    title: Text(OnShiftnames[index], style: TextStyle(fontSize: namefontsize)),
                    //add their program
                    subtitle: Text(OnShiftprogram[index]),
                    trailing: SizedBox.fromSize(
                        size: Size(90, 48),
                        //the button
                        child: ClipRect(
                            child: ElevatedButton(
                                child: Text('MORE'),
                               //when it is pressed set teh index number to c and go to icon two page
                                onPressed: () {
                                  k = OnShiftnum[index];
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(builder: (context) => new iConOnShiftTwoPage()),
                                  );
                                }
                            )
                        )
                  )
            )
        )
    ));
  }
}
class iConOnShiftTwoPage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(OnShiftnames[k]),
      ),
      //run the code that sets up what the page looks like
      body: IndividualOnShiftBodyWidget(),
    );
  }
}
class IndividualOnShiftBodyWidget extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return ListView(
        children: <Widget>[
          //add spacing between top of screen and image
          SizedBox(height: 30),
          //set image of icon
          //Image.asset('assets/images/Person.jpg', width: 250, height: 250),
          SizedBox(height: 20),
          //add name
          Text(OnShiftnames[k], style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
          //add program
          Text(OnShiftprogram[k], style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
          SizedBox(height: 10),
          Text('"Short biography.........."', style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic), textAlign: TextAlign.center)
        ]
    );
  }
}
