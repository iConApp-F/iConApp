import 'package:flutter/material.dart';
import 'screens/hours.dart';
import 'screens/iConsStaff.dart';
import 'screens/settings.dart';
import 'screens/inventory.dart';
import 'screens/iConStaffonShift.dart';


void main() {
  runApp(MaterialApp(
    title: 'iCons',
    initialRoute: '/',
    //creating routes
    routes: {
      '/': (context) => MyScaffold(),
      '/hours': (context) => Hours(),
      '/staff': (context) => Staff(),
      '/shift': (context) => onShiftBodyWidget(),
      '/settings': (context) => Demo(),
      '/inventory': (context) => IconsListView(),
    },// used by the OS task switcher
  ));
}


class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    //AppBar starts here
    return Scaffold(appBar: AppBar(title: Text('iCons'),
        actions: <Widget>[IconButton(icon: Image.asset('lib/images/gear.png'),
            onPressed: () {print('Go to Equipment'); Navigator.pushNamed(context, '/settings');
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
      //END of AppBar
      // Column is a vertical, linear layout.
      body: Column(
        children: <Widget>[
          /*
          * TODO: Make consistent with rest of group
          * TODO: Add in the various icons, and centre the text + size it correctly to match the wireframe
          * TODO: Change print statements to code that will go to the correct widget.
          * TODO: Resize hours bar on the bottom. I need to figure out a way to do this in flutter.
          * */

          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              OutlinedButton.icon(
                label: Text('Rooms'),
                icon: Icon(Icons.room),
                onPressed: () {
                  print('Go to Rooms');
                },
              ),
              OutlinedButton.icon(
                label: Text('Equipment'),
                icon: Icon(Icons.bolt),
                onPressed: () {
                  print('Go to Equipment'); Navigator.pushNamed(context, '/inventory');
                },
              ),
              OutlinedButton.icon(
                label: Text('Help'),
                icon: Icon(Icons.help),
                onPressed: () {
                  print('Go to Help'); Navigator.pushNamed(context, '/shift');
                },
              ),
              OutlinedButton.icon(
                label: Text('The Team'),
                icon: Icon(Icons.people),
                onPressed: () {
                  print('Go to The Team'); Navigator.pushNamed(context, '/staff');
                },
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child:
                OutlinedButton.icon(
                  label: Text('Hours'),
                  icon: Icon(Icons.date_range),
                  onPressed: () {
                    print('Go to Hours'); Navigator.pushNamed(context, '/hours');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

