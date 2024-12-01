import 'dart:io';

List<String> getFileContent(String path) {
  var input = File(path);
  List<String> inputList = input.readAsLinesSync();
  return inputList;
}
