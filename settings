import 'package:flutter/material.dart';

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

class Settings extends StatefulWidget {
  Settings({Key key, this.title}) : super (key: key);
  final String title;

  @override
  SettingsState createState() => new SettingsState();
}

  class SettingsState extends State<Settings> {
    List<String> widgetList = ['Small Font', 'Medium Font', 'Large Font'];

    @override
    Widget build(BuildContext context) {
      var size = MediaQuery
          .of(context)
          .size;
      final double itemHeight = (150);
      final double itemWidth = size.width / 3;

      return new Scaffold(
        body: new Container(
          child: new GridView.count(
              crossAxisCount: 3,
              childAspectRatio: (itemHeight / itemWidth),
              controller: new ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              children: widgetList.map((String value) {
                return new Container(
                  color: Colors.white,
                  decoration: BoxDecoration(color: Colors.blue[500]),
                  margin: new EdgeInsets.all(8.0),
                  child: new Center(
                    child: new Text(
                      value,
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                );
              }) .toList(),
        ),
      ),);

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
          MyAppBar(
            title: Text(
              'Settings',
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 30,
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              OutlinedButton.icon(
                label: Text('Dark Mode'),
                icon: Icon(Icons.nightlight_round),
                onPressed: () {
                  print('Go Dark');
                },
              ),
              OutlinedButton.icon(
                label: Text('Light Mode'),
                icon: Icon(Icons.wb_sunny_outlined),
                onPressed: () {
                  print('Go Light');
                },
              ),
              OutlinedButton.icon(
                label: Text('Volume Off'),
                icon: Icon(Icons.volume_off),
                onPressed: () {
                  print('Go to Help');
                },
              ),
              OutlinedButton.icon(
                label: Text('Volume On'),
                icon: Icon(Icons.volume_up),
                onPressed: () {
                  print('Volume On');
                },
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child:
                OutlinedButton.icon(
                  label: Text('Credits'),
                  icon: Icon(Icons.description_outlined),
                  onPressed: () {
                    print('credits');
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

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: SafeArea(
      child: MyScaffold(),
    ),
  ));
  runApp(MaterialApp(
    title: 'My app',
    home: SafeArea(
      child: Settings(),
    ),
 ));
}
