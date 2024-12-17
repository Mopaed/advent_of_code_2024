import 'package:advent_of_code_2024/file_reader.dart' as file_reader;

List<List<int>> getInputList(String path) {
  return file_reader.getFileContent(path).map((e) {
    return e.split(' ').map((i) {
      return int.parse(i);
    }).toList();
  }).toList();
}

int getNumberOfSaveReports(String path) {
  int safeReports = 0;
  List<List<int>> reports = getInputList(path);
  reports.forEach((sublist) {
    bool increase = sublist.elementAt(0) < sublist.elementAt(1);
    bool safe = false;
    for (int i = 0; i + 1 < sublist.length; i++) {
      int diff = sublist[i] - sublist[i + 1];
      if ((increase && diff < 0 && diff >= -3) ||
          (!increase && diff > 0 && diff <= 3)) {
        safe = true;
      } else {
        safe = false;
        break;
      }
    }
    if (safe) {
      safeReports++;
    }
  });
  return safeReports;
}
