import 'package:advent_of_code_2024/day_two.dart' as day_two;
import 'package:test/test.dart';

void main() {
  test("get InputList Day Two", () {
    List<List<int>> inputlist = day_two.getInputList('test/files/day_two.txt');
    expect(inputlist.isNotEmpty, true);
  });
}
