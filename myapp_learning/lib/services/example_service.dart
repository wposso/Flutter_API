// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'product_model.dart';

Future<List<Product>> exampleFuction() async {
  final response =
      await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));

  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    return data.map((json) => Product.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load products');
  }
}

Future<List<parametros>> serviceFuction() async {
  final response = await http.get(Uri.parse('uri'));

  if (response.statusCode == 200) {
    List<dynamic> datos = jsonDecode(response.body);
    return datos.map((json) => parametros.fromJson(json)).toList();
  } else {
    throw Exception('Failed categories');
  }
}
