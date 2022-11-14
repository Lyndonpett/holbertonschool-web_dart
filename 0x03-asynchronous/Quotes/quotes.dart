import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
// Create a function generateQuote() that accepts one argument id and return a quote by the character corresponding to that id.
// Function prototype: Future<String> generateQuote(id)
// You should use https://breakingbadapi.com/ to get the data required
// Returns the first quote fetched from the API in this format : “ : ”
// You may need the replaceAll built in method
// Must use try-catch
// If an error occurs the function should return"There is no quotes"

Future<String> generateQuote(id) async {
  try {
    http.Response resp =
        await http.get(Uri.parse('https://breakingbadapi.com/api/quotes/$id'));
    var quotes = jsonDecode(resp.body);
    return "${quotes[0]['author']} : ${quotes[0]['quote']}";
  } catch (err) {
    return "There is no quotes";
  }
}
