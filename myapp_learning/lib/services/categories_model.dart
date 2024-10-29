// ignore_for_file: camel_case_types
import 'dart:convert';

import 'package:http/http.dart' as http;

class categoria {
  final int id;
  final String nombre;
  final String imagen;

  categoria({required this.id, required this.nombre, required this.imagen});

  factory categoria.fromJson(Map<String, dynamic> json) {
    return categoria(
        id: json['id'], nombre: json['name'], imagen: json['image']);
  }
}

Future<List<categoria>> fuctionCategories() async {
  final response =
      await http.get(Uri.parse('https://api.escuelajs.co/api/v1/categories'));
  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    return data.map((json) => categoria.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load categories');
  }
}
