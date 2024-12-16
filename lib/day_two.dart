import 'package:advent_of_code_2024/file_reader.dart' as file_reader;

List<List<int>> getInputList(String path) {
  return file_reader.getFileContent(path).map((e) {
    return e.split(' ').map((i) {
      return int.parse(i);
    }).toList();
  }).toList();
}
