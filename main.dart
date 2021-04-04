import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Over Screens',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      routes: {
        '/': (context) => MainPage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
        '/fourth': (context) => FourthPage(),
        '/fifth': (context) => FifthPage(),
        '/sixth': (context) => SixthPage(),
      },
      initialRoute: '/',
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Library Map'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/second'),
                child: Text('Lower Level Seat Map'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                ),
                child: Text('Ground Level Seat Map'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/fourth'),
                child: Text('Second Level Seat Map'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/fifth'),
                child: Text('Third Level Seat Map'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/sixth'),
                child: Text('Fourth Level Seat Map'),
              ),
            ],
          ),
        ),
      );
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lower Level Seat Map'),
        ),
        body: Image.network('https://libapps-ca.s3.amazonaws.com/customers/1515/images/stauffer_lower_level_2020_seats.png'));
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ground Level Seat Map'),
        ),
        body: Image.network('https://libapps-ca.s3.amazonaws.com/customers/1515/images/stauffer_ground_floor_2020_seats.png'));
  }
}

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Level Seat Map'),
        ),
        body: Image.network('https://libapps-ca.s3.amazonaws.com/customers/1515/images/stauffer_second_floor_2020_seats.png'));
  }
}

class FifthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Third Level Seat Map'),
        ),
        body: Image.network('https://libapps-ca.s3.amazonaws.com/customers/1515/images/stauffer_third_floor_2020_seats.png'));
  }
}

class SixthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fourth Level Seat Map'),
        ),
        body: Image.network('https://libapps-ca.s3.amazonaws.com/customers/1515/images/stauffer_fourth_floor_2020_seats.png'));
  }
}
