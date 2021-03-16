import 'package:flutter/material.dart';
import 'hours.dart';
import 'iConsStaff.dart';
import 'settings.dart';
import 'inventory.dart';


void main() {
  runApp(MaterialApp(
    title: 'iCons',
    initialRoute: '/',
    routes: {
      '/': (context) => MyScaffold(),
      '/hours': (context) => Hours(),
      '/staff': (context) => Staff(),
      '/settings': (context) => Demo(),
      '/inventory': (context) => IconsListView(),
    },// used by the OS task switcher
  ));
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        // <Widget> is the type of items in the list.
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child to fill the available space.
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
          /*
          * TODO: Make consistent with rest of group
          * TODO: Add in the various icons, and centre the text + size it correctly to match the wireframe
          * TODO: Change print statements to code that will go to the correct widget.
          * TODO: Resize hours bar on the bottom. I need to figure out a way to do this in flutter.
          * */
          MyAppBar(
            title: Text(
              'App Bar',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
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
                print('Go to Equipment');
              },
            ),
            OutlinedButton.icon(
              label: Text('Help'),
              icon: Icon(Icons.help),
              onPressed: () {
                print('Go to Help'); Navigator.pushNamed(context, '/staff');
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

