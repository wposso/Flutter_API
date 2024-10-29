import 'package:flutter/material.dart';
import 'package:myapp_learning/services/api_service.dart';
// import 'api_service.dart';

class MarvelPage extends StatefulWidget {
  const MarvelPage({super.key});

  @override
  _MarvelPageState createState() => _MarvelPageState();
}

class _MarvelPageState extends State<MarvelPage> {
  late Future<Map<String, dynamic>> futureCharacters;

  @override
  void initState() {
    super.initState();
    futureCharacters = fetchMarvelCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marvel Characters'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: futureCharacters,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData && snapshot.data != null) {
            List characters = snapshot.data!['data']['results'];
            return ListView.builder(
              itemCount: characters.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(characters[index]['name']),
                  subtitle: Text(characters[index]['description'] ?? 'No description available'),
                );
              },
            );
          } else {
            return const Center(child: Text('No data found'));
          }
        },
      ),
    );
  }
}
