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

class _MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text('Catalog', style: Theme.of(context).textTheme.headline1),
      floating: true,
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () => Navigator.pushNamed(context, '/cart'),
        ),
      ],
    );
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
  List<InventoryData> toCatagolize = [];
  final Set _toBeRented = Set<InventoryData>();
  //still in progress. Hopefully, it will be used to store selected items
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
      toCatagolize = listOfItems;
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
    bool itemsUploaded = false;

    changeItemBar() {
      if (!itemsUploaded) {
        itemsUploaded = true;
        fetchItems();
      }
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('wow', style: Theme.of(context).textTheme.headline1),
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () => Navigator.pushNamed(context, '/cart'),
              ),
            ],
          ),
          body: ListView.builder(
              itemCount: toCatagolize.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(toCatagolize[index].Name +
                      ": " +
                      toCatagolize[index].available +
                      "/" +
                      toCatagolize[index].total),
                  trailing: Icon(isSaved(toCatagolize[index])
                      ? Icons.check
                      : Icons.add), //just some text and icons.
                  /**
                 * Still working onTap thing as well _toBeRented function.
                 */
                  onTap: () {
                    print(isSaved(toCatagolize[index]));
                    setState(() {
                      if (isSaved(toCatagolize[index])) {
                        _toBeRented.remove(toCatagolize[index]);
                        print("deleted");
                      } else {
                        _toBeRented.add(toCatagolize[index]);
                        print("added");
                      }
                    });
                    print(_toBeRented.length);
                  },
                );
              })),
    );
  }
}
