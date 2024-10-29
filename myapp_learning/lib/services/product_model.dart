// ignore_for_file: camel_case_types

class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      image: json['images'][0],
    );
  }
}


class parametros {
  final int id;
  final String nombre;
  final String imagen;

  parametros({
      required this.id,
      required this.nombre,
      required this.imagen
    });

  factory parametros.fromJson(Map<String, dynamic> json){
    return parametros(
      id: json['id'], 
      nombre: json['nombre'], 
      imagen: json['imagen']);
  }
}