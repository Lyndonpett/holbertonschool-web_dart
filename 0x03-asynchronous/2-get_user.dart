import "2-main.dart";
// Create a function getUser() that prints the user’s string representation.
// Function prototype : Future<void> getUser()
// Gets the user data by calling the provided function fetchUserData()
// Must use : try-catch If an error occurs the function should print “error caught: ”

Future<void> getUser() async {
  try {
    print(await fetchUser());
  } catch (e) {
    print("error caught: $e");
  }
}
