import 'package:advent_of_code_2024/day_two.dart' as day_two;
import 'package:test/test.dart';

String path = 'test/files/day_two.txt';

void main() {
  test("get InputList Day Two", () {
    List<List<int>> inputlist = day_two.getInputList(path);
    expect(inputlist.isNotEmpty, true);
  });

  test("getNumberOfSaveReports", () {
    expect(day_two.getNumberOfSaveReports(path), 2);
  });
}
