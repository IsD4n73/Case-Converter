import 'package:case_converter/model/consts.dart';

String getWordCount(String s) {
  final Iterable matches = AppConst.word.allMatches(s);
  final int count = matches.length;

  return "$count";
}

String getLinesCount(String s) {
  final numLines = '\n'.allMatches(s).length + 1;

  return "$numLines";
}
