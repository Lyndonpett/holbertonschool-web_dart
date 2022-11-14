import 'dart:convert';
import 'package:http/http.dart' as http;
// Create a function printBbCharacters() that prints all breaking bad characters.
// Function prototype: Future<void> printBbCharacters()
// You should use https://breakingbadapi.com/ to get the data required
// Must use try-catch If an error occurs the function should return “error caught: ”

Future<String> printBbCharacters() async {
  try {
    var resp =
        await http.get(Uri.parse('https://breakingbadapi.com/api/characters'));
    var data = jsonDecode(resp.body);

    for (var i = 0; i < data.length; i++) {
      print(data[i]['name']);
    }
  } catch (e) {
    return 'error caught: $e';
  }
}
