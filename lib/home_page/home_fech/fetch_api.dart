// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;

import '../../model/productModel.dart';

class ProductRepo {
  Uri url = Uri.parse('https://fakestoreapi.com/products');
  Future<List<Products>> fetchproduct() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body).cast<Map<String, dynamic>>();
      // print(data);
      var products =
          data.map<Products>((json) => Products.fromJson(json)).toList();
      return products;
    } else {
      throw Exception('failed');
    }

    // print(response.body[0]);
  }


  

}
