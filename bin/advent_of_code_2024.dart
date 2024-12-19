import 'package:advent_of_code_2024/advent_of_code_2024.dart'
    as advent_of_code_2024;
import 'package:advent_of_code_2024/day_one.dart' as day_one;
import 'package:advent_of_code_2024/day_two.dart' as day_two;

String path = './assets/files/';
String pathDayOne = '${path}day_one.txt';
String pathDayTwo = '${path}day_two.txt';

void main(List<String> arguments) {
  print('Hello world: ${advent_of_code_2024.calculate()}!');
  print('Solution Day 01 Part 1: ${day_one.calculateDistances(pathDayOne)}');
  print(
      'Solution Day 01 Part 2: ${day_one.calculateSimilarityScore(pathDayOne)}');

  print(
      'Solution Day 02 Part 1: ${day_two.getNumberOfSaveReports(pathDayTwo, 0)}');
}
