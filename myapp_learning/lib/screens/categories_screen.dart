// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:myapp_learning/services/categories_model.dart';

// class CategoriesScreen extends StatefulWidget {
//   const CategoriesScreen({super.key});

//   @override
//   State<CategoriesScreen> createState() => _CategoriesScreenState();
// }

// class _CategoriesScreenState extends State<CategoriesScreen> {
//   late Future<List<categoria>> futureCategorie;

//   @override
//   void initState() {
//     super.initState();
//     futureCategorie = fuctionCategories();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Categories'),
//         backgroundColor: Colors.blue,
//         foregroundColor: Colors.white,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(2.0),
//         child: FutureBuilder<List<categoria>>(
//           future: futureCategorie,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               List<categoria> categoria = snapshot.data!;
//               return SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: categoria.map((cat) {
//                     return Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           children: [
//                             Container(
//                               padding: EdgeInsets.all(8.0),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                   color:
//                                       const Color.fromARGB(255, 237, 236, 234)),
//                               child: Row(
//                                 children: [
//                                   Image.network(
//                                     cat.imagen,
//                                     width: 50,
//                                     height: 50,
//                                     fit: BoxFit.cover,
//                                   ),
//                                   const SizedBox(
//                                     width: 5.0,
//                                   ),
//                                   Text(cat.nombre)
//                                 ],
//                               ),
//                             )
//                           ],
//                         ));
//                   }).toList(),
//                 ),
//               );
//             } else if (snapshot.hasError) {
//               return Center(
//                 child: Text('Error: ${snapshot.error}'),
//               );
//             } else {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
