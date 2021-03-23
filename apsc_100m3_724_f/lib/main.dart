import 'package:flutter/material.dart';
import 'screens/hours.dart';
import 'screens/iConsStaff.dart';
import 'screens/settings.dart';
//import 'screens/inventory.dart';
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
      //'/inventory': (context) => IconsListView(),
    },// used by the OS task switcher
  ));
}


class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    //AppBar starts here
    return Scaffold(backgroundColor: Colors.white, appBar: AppBar(title: Text('iCons'),
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

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /*
            * TODO: Make consistent with rest of group
            * TODO: Add in the various icons, and centre the text + size it correctly to match the wireframe
            * TODO: Change print statements to code that will go to the correct widget.
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Palette.iBrown, Palette.iBlue])),
                  child: OutlinedButton.icon(
                    label: Text('Rooms', style: TextStyle(color: Colors.white, fontSize: 20)),
                    icon: Icon(Icons.room, color: Colors.white,),
                    onPressed: () {
                      print('Go to Rooms');
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Palette.iBrown, Palette.iBlue])),
                  child: OutlinedButton.icon(
                    label: Text('Equipment', style: TextStyle(color: Colors.white, fontSize: 20)),
                    icon: Icon(Icons.bolt, color: Colors.white,),
                    onPressed: () {
                      print('Go to Equipment'); Navigator.pushNamed(context, '/inventory');
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Palette.iBrown, Palette.iBlue])),
                  child: OutlinedButton.icon(
                    label: Text('Help', style: TextStyle(color: Colors.white, fontSize: 20)),
                    icon: Icon(Icons.help, color: Colors.white,),
                    onPressed: () {
                      print('Go to Help'); Navigator.pushNamed(context, '/shift');
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Palette.iBrown, Palette.iBlue])),
                  child: OutlinedButton.icon(
                    label: Text('The Team', style: TextStyle(color: Colors.white, fontSize: 20)),
                    icon: Icon(Icons.people, color: Colors.white,),
                    onPressed: () {
                      print('Go to The Team'); Navigator.pushNamed(context, '/staff');
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child:
                  Container(height: 60, decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Palette.iBrown, Palette.iBlue])),
                    child: OutlinedButton.icon(
                      label: Text('Hours', style: TextStyle(color: Colors.white, fontSize: 20)),
                      icon: Icon(Icons.schedule, color: Colors.white,),
                      onPressed: () {
                        print('Go to Hours'); Navigator.pushNamed(context, '/hours');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

