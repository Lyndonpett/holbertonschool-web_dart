// Create a function usersCount() that prints the number of users.
// Function prototype : Future<void> usersCount() Gets the user count by calling the provided function fetchUsersCount(). which will simulate fetching data from an api.
Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

Future<void> usersCount() async {
  final int count = await fetchUsersCount();
  print(count);
}
