// import '2-main.dart';
// Create a function getUser() that prints the user’s string representation.
// Function prototype : Future<void> getUser()
// Gets the user data by calling the provided function fetchUserData()
// Must use : try-catch If an error occurs the function should print “error caught: ”
Future<String> fetchUserData() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

Future<void> getUser() async {
  try {
    final user = await fetchUserData();
    print(user);
  } catch (e) {
    print('error caught: $e');
  }
}
