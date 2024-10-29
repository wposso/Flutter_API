// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ReturnScreen extends StatefulWidget {
  const ReturnScreen({super.key});

  @override
  State<ReturnScreen> createState() => _ReturnScreenState();
}

class _ReturnScreenState extends State<ReturnScreen> {
  final DateTime firstDate = DateTime(1950);
  final DateTime lastDate = DateTime(2100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 10,
        foregroundColor: Colors.white,
        title: const Text('Tienda'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Categorias',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(9.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color.fromARGB(255, 240, 239, 238),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.favorite),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('Favorite'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    padding: const EdgeInsets.all(9.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color.fromARGB(255, 240, 239, 238),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.filter_drama_sharp),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('Cloud'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    padding: const EdgeInsets.all(9.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color.fromARGB(255, 240, 239, 238),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.wifi_tethering_outlined),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('Wifi signal'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    padding: const EdgeInsets.all(9.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color.fromARGB(255, 240, 239, 238),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.whatshot),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('Fire stone'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    padding: const EdgeInsets.all(9.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color.fromARGB(255, 240, 239, 238),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.water_drop),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('Water drop'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Productos',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shopify_rounded, size: 50),
                              const Text('Esta es una tarjeta'),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 10.0,
                                ),
                                onPressed: () {
                                  showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: firstDate,
                                    lastDate: lastDate,
                                    builder:
                                        (BuildContext context, Widget? child) {
                                      return Theme(
                                        data: ThemeData.light().copyWith(
                                          colorScheme: ColorScheme.light(
                                            primary: Colors
                                                .deepPurple, // Color del encabezado y selección
                                            onPrimary: Colors
                                                .white, // Color del texto del encabezado
                                            onSurface: Colors
                                                .black, // Color del texto del calendario
                                          ),
                                          dialogBackgroundColor: Colors
                                              .white, // Fondo del cuadro de diálogo
                                        ),
                                        child: child!,
                                      );
                                    },
                                  );
                                },
                                child: const Text('Favorite'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shopify_rounded, size: 50),
                              const Text('Esta es una tarjeta'),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 10.0,
                                ),
                                onPressed: () {},
                                child: const Text('Favorite'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shopify_rounded, size: 50),
                              const Text('Esta es una tarjeta'),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 10.0,
                                ),
                                onPressed: () {},
                                child: const Text('Favorite'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shopify_rounded, size: 50),
                              const Text('Esta es una tarjeta'),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 10.0,
                                ),
                                onPressed: () {},
                                child: const Text('Favorite'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shopify_rounded, size: 50),
                              const Text('Esta es una tarjeta'),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 10.0,
                                ),
                                onPressed: () {},
                                child: const Text('Favorite'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shopify_rounded, size: 50),
                              const Text('Esta es una tarjeta'),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 10.0,
                                ),
                                onPressed: () {},
                                child: const Text('Favorite'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10.0),
                  Column(
                    children: [
                      SizedBox(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shopify_rounded, size: 50),
                              const Text('Esta es una tarjeta'),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 10.0,
                                ),
                                onPressed: () {},
                                child: const Text('Favorite'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shopify_rounded, size: 50),
                              const Text('Esta es una tarjeta'),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 10.0,
                                ),
                                onPressed: () {},
                                child: const Text('Favorite'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shopify_rounded, size: 50),
                              const Text('Esta es una tarjeta'),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 10.0,
                                ),
                                onPressed: () {},
                                child: const Text('Favorite'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shopify_rounded, size: 50),
                              const Text('Esta es una tarjeta'),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 10.0,
                                ),
                                onPressed: () {},
                                child: const Text('Favorite'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shopify_rounded, size: 50),
                              const Text('Esta es una tarjeta'),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 10.0,
                                ),
                                onPressed: () {},
                                child: const Text('Favorite'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: 150.0,
                        height: 150.0,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shopify_rounded, size: 50),
                              const Text('Esta es una tarjeta'),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  elevation: 10.0,
                                ),
                                onPressed: () {},
                                child: const Text('Favorite'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.pink,
          fixedColor: Colors.pink,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.storefront_outlined), label: 'Store'),
          ]),
    );
  }
}
