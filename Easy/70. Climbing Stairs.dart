int climbStairs(int n) {
  if (n <= 2) return n;

  int a = 1, b = 2;
  for (int i = 3; i <= n; i++) {
    int temp = a + b;
    a = b;
    b = temp;
  }
  return b;
}

void main() {
  print(climbStairs(2));
  print(climbStairs(3)); 
  print(climbStairs(4)); 
}
