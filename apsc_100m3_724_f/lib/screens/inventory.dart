import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'fetchDatabase.dart'; // For updating states
import 'MyGlobals.dart' as gl;
import 'package:badges/badges.dart';
import 'Cart.dart';

/**
 * To use this file, just import this file as the "inventory.dart";
 * You then need to call it "iconsListView()" in the body widget of main class. Or onTap. Or anything really.
 * Oh, btw, you should also add a dev_dependency in your pubspec.yaml file - "http:"
 */

/**
 * Creating an object for each inventory item. IDs are set automatically by the database.
 */

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
  /**
   * checking if the clicked item is in the _toBeRented set
   */
  bool isSaved(InventoryData data) {
    return gl.MyGlobals.toBeRented.contains(data);
  }

  /**
   * this one fetches data from the database website, makes objects out of the them and puts them in the list "listOfItems"
   */

  /**
   * Main part. Still not sure what is the snapshot... oh well. This widget just displays the listOfItems as a list of clickable items.
   */
  @override
  Widget build(BuildContext context) {
    List inventoryList = gl.MyGlobals.inventoryList;
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('iCons Inventory',
                style: Theme.of(context).textTheme.headline3),
            actions: [
              IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartView()),
                    );
                  }),
            ],
          ),
          body: ListView.builder(
              itemCount: inventoryList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(inventoryList[index].Name +
                      ": " +
                      inventoryList[index].available +
                      "/" +
                      inventoryList[index].total),
                  trailing: Icon(isSaved(inventoryList[index])
                      ? Icons.check
                      : Icons.add), //just some text and icons.
                  /**
                 * Still working onTap thing as well _toBeRented function.
                 */
                  onTap: () {
                    print(isSaved(inventoryList[index]));
                    setState(() {
                      if (isSaved(inventoryList[index])) {
                        gl.MyGlobals.toBeRented.remove(inventoryList[index]);
                        print("deleted");
                      } else {
                        gl.MyGlobals.toBeRented.add(inventoryList[index]);
                        print("added");
                      }
                    });
                    print(gl.MyGlobals.toBeRented.length);
                  },
                );
              })),
    );
  }
}
