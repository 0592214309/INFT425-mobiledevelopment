int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;
int multiply(int a, int b) => a * b;
double divide(int a, int b) {
  if (b == 0) throw ArgumentError('Cannot divide by zero');
  return a / b;
}
bool isEven(int n) => n % 2 == 0;
int maxOfThree(int a, int b, int c) => [a, b, c].reduce((x, y) => x > y ? x : y);

String calculateGrade(int score) {
  if (score < 0 || score > 100) {
    throw ArgumentError('Score must be between 0 and 100');
  }
  if (score >= 80) return 'A';
  if (score >= 70) return 'B';
  if (score >= 60) return 'C';
  if (score >= 50) return 'D';
  return 'F';
}