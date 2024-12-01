import 'package:advent_of_code_2024/file_reader.dart';
import 'package:test/test.dart';

void main() {
  test('file_reader.getContent', () {
    List<String> input = getFileContent('test/files/test.txt');
    expect(input.first, 'Hello, World!');
  });
}
