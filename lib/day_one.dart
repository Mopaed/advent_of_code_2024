import 'package:advent_of_code_2024/file_reader.dart';

partOne() {}

int calculateDistances(String path) {
  var inputLists = getInputLists(path);
  List<int> intList1 = convertStringListToInt(inputLists.$1);
  List<int> intList2 = convertStringListToInt(inputLists.$2);
  intList1.sort();
  intList2.sort();
  int distance = 0;
  if (intList1.length == intList2.length) {
    for (int i = 0; i < intList1.length; i++) {
      distance += (intList1[i] - intList2[i]).abs();
    }
  }

  return distance;
}

(List<String>, List<String>) getInputLists(String path) {
  List<String> one = [], two = [];
  getFileContent(path).forEach((element) {
    final splitted = element.split('   ');
    one.add(splitted.first);
    two.add(splitted.last);
  });

  return (one, two);
}

List<int> convertStringListToInt(List<String> listToBeConverted) {
  return listToBeConverted.map((element) {
    return int.parse(element);
  }).toList();
}

int calculateSimilarityScore(String path) {
  var inputLists = getInputLists(path);
  List<int> list1 = convertStringListToInt(inputLists.$1);
  List<int> list2 = convertStringListToInt(inputLists.$2);
  int similarityScore = 0;
  int occurences = 0;
  list1.forEach((a) {
    list2.forEach((b) {
      if (a == b) {
        occurences++;
      }
    });
    similarityScore += a * occurences;
    occurences = 0;
  });
  return similarityScore;
}
