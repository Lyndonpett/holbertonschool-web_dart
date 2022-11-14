import 'dart:convert';

// Create a function getUserID() that returns a future string representing the user’s ID.
// Function prototype : Future<String> getUserId()
// Gets the user data by calling the provided function fetchUserData() which will simulate fetching data from an api.
Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> getUserId() async {
  final String data = await fetchUserData();
  return jsonDecode(data)['id'];
}
