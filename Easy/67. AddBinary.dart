void main() {
  String a = '1101', b = '1';
  Solution S = Solution();
  String ans = S.addBinary(a, b);
  print(ans);
}

class Solution {
  String addBinary(String a, String b) {
    // Pointers starting from the end of both strings
    int i = a.length - 1;
    int j = b.length - 1;

    // Carry for binary addition
    int carry = 0;

    // Use a StringBuffer to build the result efficiently
    StringBuffer result = StringBuffer();

    // Loop until both strings are processed AND there is no carry left
    while (i >= 0 || j >= 0 || carry > 0) {
      int sum = carry;

      // Add bit from 'a' if pointer is valid
      if (i >= 0) {
        sum += a.codeUnitAt(i) - '0'.codeUnitAt(0);
        i--;
      }

      // Add bit from 'b' if pointer is valid
      if (j >= 0) {
        sum += b.codeUnitAt(j) - '0'.codeUnitAt(0);
        j--;
      }

      // The current bit is sum % 2
      result.write(sum % 2);

      // Update carry for the next iteration
      carry = sum ~/ 2;
    }

    // Since we built the string from least significant to most significant,
    // we need to reverse it.
    return result.toString().split('').reversed.join();
  }
}
