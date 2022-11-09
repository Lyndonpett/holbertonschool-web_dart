import '9-palindrome.dart';

String longestPalindrome(String s) {
  // If the length of the input string is less than 3 characters it doesn’t count as a palindrome.
  if (s.length < 3) {
    return 'none';
  }
  // If the input string is equal to its reverse, it’s a palindrome.
  if (s == s.split('').reversed.join('')) {
    return s;
  }
  String longest = '';
  String current = '';
  for (int i = 0; i < s.length; i++) {
    for (int j = i; j < s.length; j++) {
      current = s.substring(i, j + 1);
      if (current.length > longest.length && isPalindrome(current)) {
        longest = current;
      }
    }
  }
  return longest != '' ? longest : 'none';
}
