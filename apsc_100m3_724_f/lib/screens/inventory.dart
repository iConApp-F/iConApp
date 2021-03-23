import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart'; // For updating states

/**
 * To use this file, just import this file as the "inventory.dart";
 * You then need to call it "iconsListView()" in the body widget of main class. Or onTap. Or anything really.
 * Oh, btw, you should also add a dev_dependency in your pubspec.yaml file - "http:"
 */

/**
 * Creating an object for each inventory item. IDs are set automatically by the database.
 */
class InventoryData {
  String id;
  String Name;
  String available;
  String total;

  InventoryData({
    this.id,
    this.Name,
    this.available,
    this.total,
  });

  /**
   * reads json table of the inventory and creates an inventory object
   */
  factory InventoryData.fromJson(Map<String, dynamic> json) {
    return InventoryData(
        id: json['id'],
        Name: json['inventory_name'],
        available: json['inventory_available'],
        total: json['inventory_total']);
  }
}

/**
 * no idea rly
 */
class IconsListView extends StatefulWidget {
  IconsListViewWidget createState() => IconsListViewWidget();
}

/**
 * main component here is the url as it's our inventory database
 */
class IconsListViewWidget extends State<IconsListView> {
  final _toBeRented = Set<
      InventoryData>(); //still in progress. Hopefully, it will be used to store selected items
  final String urL =
      'http://flutter-server-app.000webhostapp.com/inventory_list_file.php/';

  /**
   * checking if the clicked item is in the _toBeRented set
   */
  bool isSaved(InventoryData data) {
    return _toBeRented.contains(data);
  }

  /**
   * this one fetches data from the database website, makes objects out of the them and puts them in the list "listOfItems"
   */
  Future<List<InventoryData>> fetchItems() async {
    var response = await http.get(urL);

    if (response.statusCode == 200) {
      final items = json.decode(response.body).cast<Map<String, dynamic>>();

      List<InventoryData> listOfItems = items.map<InventoryData>((json) {
        return InventoryData.fromJson(json);
      }).toList();
      return listOfItems;
    } else {
      throw Exception('Failed to load data.');
    }
  }

  /**
   * Main part. Still not sure what is the snapshot... oh well. This widget just displays the listOfItems as a list of clickable items.
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<InventoryData>>(
          future: fetchItems(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(
                  child:
                  CircularProgressIndicator()); //This one is neat. It's a progress indicator; so if there's no connection, it will go on and on
            return ListView(
              children: snapshot.data
                  .map((data) => ListTile(
                //listOfItems is displaced as a list
                title: Text(
                    data.Name + ": " + data.available + "/" + data.total),
                trailing: Icon(isSaved(data)
                    ? Icons.check
                    : Icons.add), //just some text and icons.
                /**
                 * Still working onTap thing as well _toBeRented function.
                 */
                onTap: () {
                  print(isSaved(data));
                  setState(() {
                    if (isSaved(data)) {
                      _toBeRented.remove(data);
                      print("deleted");
                    } else {
                      _toBeRented.add(data);
                      print("added");
                    }
                  });
                },
              ))
                  .toList(),
            );
          },
        ));
  }
}
