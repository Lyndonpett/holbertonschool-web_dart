import "0-main.dart";
// Create a function usersCount() that prints the number of users.
// Function prototype : Future<void> usersCount() Gets the user count by calling the provided function fetchUsersCount(). which will simulate fetching data from an api.

Future<void> usersCount() async {
  final int count = await fetchUsersCount();
  print(count);
}
