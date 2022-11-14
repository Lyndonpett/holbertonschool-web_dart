import '1-main.dart';
import 'dart:convert';
// Create a function getUserID() that returns a future string representing the user’s ID.
// Function prototype : Future<String> getUserId()
// Gets the user data by calling the provided function fetchUserData() which will simulate fetching data from an api.

Future<String> getUserId() async {
  final String data = await fetchUserData();
  return jsonDecode(data)['id'];
}
