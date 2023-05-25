import 'package:case_converter/model/consts.dart';
import 'package:flutter/material.dart';

String getWordCount(String s) {
  final Iterable matches = AppConst.word.allMatches(s);
  final int count = matches.length;

  return "$count";
}

String getLinesCount(String s) {
  final numLines = '\n'.allMatches(s).length + 1;

  return "$numLines";
}

String alternateChar(String values) {
  String result = "";
  bool lower = false;

  for (var s in values.characters) {
    lower = !lower;
    if (lower) {
      result += s.toLowerCase();
    } else {
      result += s.toUpperCase();
    }
  }

  return result;
}
