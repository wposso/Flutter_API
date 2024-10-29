// ignore_for_file: prefer_is_empty

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Parametros {
  final int id;
  final String titulo;
  final String subtitulo;
  final double precio;
  final String descripcion;

  Parametros({
    required this.id,
    required this.titulo,
    required this.subtitulo,
    required this.precio,
    required this.descripcion,
  });
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final List<Parametros> lista = [
    Parametros(
        id: 1,
        titulo: 'Xbox One S',
        subtitulo: 'subtitulo',
        precio: 10.0,
        descripcion: 'Consola de videojuegos')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Index Map'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              if (lista.isNotEmpty) {
                return Slidable(
                  startActionPane:
                      const ActionPane(motion: StretchMotion(), children: [
                    SlidableAction(
                        backgroundColor: Colors.green,
                        icon: Icons.favorite,
                        onPressed: null),
                    SlidableAction(
                        flex: 1,
                        backgroundColor: Colors.blue,
                        icon: Icons.message,
                        onPressed: null)
                  ]),
                  endActionPane: const ActionPane(
                      motion: StretchMotion(),
                      children: [
                        SlidableAction(
                            backgroundColor: Colors.red,
                            icon: Icons.delete,
                            onPressed: null)
                      ]),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 245, 244, 242)),
                    child: ListTile(
                      key: ValueKey(lista[index].id),
                      leading: Text(
                        lista[index].id.toString(),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      title: Text(lista[index].titulo),
                      subtitle: Text(lista[index].descripcion),
                      trailing: Text(
                        '\$${lista[index].precio}',
                        style: const TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                );
              } else {
                return const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text('No hay datos disponibles!'),
                  ),
                );
              }
            },
          ),
        ));
  }
}
