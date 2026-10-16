import 'package:test/test.dart';
// Replace 'calc_app' with whatever your package name is in pubspec.yaml
import 'package:calc_app/calculator.dart'; 

void main() {
  group('Calculator Tests', () {
    test('Addition test', () {
      expect(add(2, 3), equals(5));
    });
    test('Division error test', () {
      expect(() => divide(10, 0), throwsArgumentError);
    });
    test('Grade Calculator test', () {
      expect(calculateGrade(85), equals('A'));
      expect(calculateGrade(72), equals('B'));
      expect(() => calculateGrade(105), throwsArgumentError);
    });
  });
}