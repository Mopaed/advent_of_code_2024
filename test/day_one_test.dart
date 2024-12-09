import 'package:advent_of_code_2024/day_one.dart';
import 'package:test/test.dart';

void main() {
  test('calculate distance', () {
    expect(calculateDistances('test/files/day_one.txt'), 11);
  });

  test('get Input Lists', () {
    var lists = getInputLists('test/files/day_one.txt');
    expect(lists.$1.first, '3');
    expect(lists.$2.first, '4');
  });
}
