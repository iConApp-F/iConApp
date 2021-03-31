import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:io';
import 'MyGlobals.dart' as gl;

final List<InventoryData> inventoryList = [];
final String urL =
    'http://flutter-server-app.000webhostapp.com/inventory_list_file.php/';
final filename = "database.txt";

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

  void fetchItems() async {
    print("fetching");
    var response = await http.get(gl.MyGlobals.urL);

    if (response.statusCode == 200) {
      final items = json.decode(response.body).cast<Map<String, dynamic>>();

      List<InventoryData> listOfItems = items.map<InventoryData>((json) {
        return InventoryData.fromJson(json);
      }).toList();
      gl.MyGlobals.inventoryList = listOfItems;
    } else {
      throw Exception('Failed to load data.');
    }
  }
}
