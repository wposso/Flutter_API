import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

const String publicKey = '96f9c00f7809bbc0d3df2570854df193';
const String privateKey = 'cc15d988bd9e127cab3495d25351963f16e5b09b';

String generateHash(String timeStamp, String privateKey, String publicKey) {
  final bytes = utf8.encode('$timeStamp$privateKey$publicKey');
  final digest = md5.convert(bytes);
  return digest.toString();
}

Future<Map<String, dynamic>> fetchMarvelCharacters() async {
  final timeStamp = DateTime.now().millisecondsSinceEpoch.toString();
  final hash = generateHash(timeStamp, privateKey, publicKey);

  final response = await http.get(
    Uri.parse('https://gateway.marvel.com/v1/public/characters?ts=$timeStamp&apikey=$publicKey&hash=$hash'),
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load characters');
  }
}
