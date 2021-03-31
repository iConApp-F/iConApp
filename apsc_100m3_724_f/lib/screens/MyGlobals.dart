import 'package:flutter/material.dart';
import 'fetchDatabase.dart';
import 'dart:convert';

class MyGlobals {
  static List<InventoryData> inventoryList = [];
  static String urL =
      'http://flutter-server-app.000webhostapp.com/inventory_list_file.php/';
}
