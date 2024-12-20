import 'package:advent_of_code_2024/day_one.dart' as day_one;
import 'package:test/test.dart';

void main() {
  test('calculate distance', () {
    expect(day_one.calculateDistances('test/files/day_one.txt'), 11);
  });

  test('get Input Lists', () {
    var lists = day_one.getInputLists('test/files/day_one.txt');
    expect(lists.$1.first, '3');
    expect(lists.$2.first, '4');
  });

  test('calculate similarity score', () {
    expect(day_one.calculateSimilarityScore('test/files/day_one.txt'), 31);
  });
}
