// ignore_for_file: unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:myapp_learning/services/example_service.dart';
import 'package:myapp_learning/services/product_model.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  late Future<List<Product>> futureProducts;
  late Future<List<parametros>> futureParametros;

  @override
  void initState() {
    super.initState();
    futureProducts = exampleFuction();
    futureParametros = serviceFuction();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Platzi API Demo'),
        ),
        body: FutureBuilder<List<Product>>(
          future: futureProducts,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Product> products = snapshot.data!;
              int divide = (products.length / 2).ceil();
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                        child: ListView.builder(
                      itemCount: divide,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                        product: products[index])));
                          },
                          child: Card(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.center,
                              children: [
                                Image.network(products[index].image),
                                Text(products[index].title),
                                Text('\$${products[index].price}')
                              ],
                            ),
                          ),
                        );
                      },
                    )),
                    Expanded(
                        child: ListView.builder(
                      itemCount: products.length - divide,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                        product: products[index])));
                          },
                          child: Card(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.center,
                              children: [
                                Image.network(products[index].image),
                                Text(products[index].title),
                                Text('\$${products[index].price}')
                              ],
                            ),
                          ),
                        );
                      },
                    )),
                  ],
                ),
              );
            } else {
              return const Center(
                child: Text('No data found!'),
              );
            }
          },
        ));
  }
}

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(product.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(product.image),
              const SizedBox(
                height: 8.0,
              ),
              Text(product.title),
              const SizedBox(
                height: 8.0,
              ),
              Text('\$${product.price}'),
              const SizedBox(
                height: 8.0,
              ),
              Text(product.description)
            ],
          ),
        ));
  }
}
