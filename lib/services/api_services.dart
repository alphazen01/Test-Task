import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:test/Model/product_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static var client = http.Client();

  static Future<List<ProductModel>> fetchProduct() async {
    var response = await client.get(
        Uri.parse("https://mocki.io/v1/02e91d9f-4d8c-4eb4-a4f9-bb4a60ffdaf9"));

    if (response.statusCode == 200) {
      Map<String, dynamic> _data = json.decode(response.body);
      List<ProductModel> result = [];
      List<Map<String, dynamic>> product =
      (_data["products"] as List<dynamic>).cast<Map<String, dynamic>>();

      product.forEach(
        (element) {
          result.add(ProductModel.fromJson(element));
        },
      );
      return result;
    } else {
      return [];
    }
  }
}
