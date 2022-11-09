bool isPalindrome(String s) {
  // If the length of the input string is less than 3 characters it doesn’t count as a palindrome.
  if (s.length < 3) {
    return false;
  }
  // If the input string is equal to its reverse, it’s a palindrome.
  if (s == s.split('').reversed.join('')) {
    return true;
  }
  return false;
}
