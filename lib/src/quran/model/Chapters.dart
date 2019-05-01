library Chapters;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'dart:convert' as json;
import 'package:flutter_quran/src/serializers/Serializers.dart';

part 'Chapters.g.dart';

abstract class Main implements Built<Main, MainBuilder> {
  static Serializer<Main> get serializer => _$mainSerializer;

  BuiltList<Chapters> get chapters;

  Main._();

  factory Main([updates(MainBuilder b)]) = _$Main;
}

abstract class Chapters implements Built<Chapters, ChaptersBuilder> {
  static Serializer<Chapters> get serializer => _$chaptersSerializer;

  int get id; //1,2,3
  int get chapter_number; //1
  bool get bismillah_pre; //false,
  int get revelation_order; //5,
  String get revelation_place; //"makkah",
  String get name_complex; //"Al-Fātiĥah",
  String get name_arabic; //"الفاتحة",
  String get name_simple; //Al-Fatihah",
  int get verses_count; // 7,



  Chapters._();

  factory Chapters([updates(ChaptersBuilder b)]) = _$Chapters;
}

Main getmain(String jsonStr) {
  final parsedvalue = json.jsonDecode(jsonStr);

  Main main = standardSerializers.deserializeWith(Main.serializer, parsedvalue);
  return main;
}

List<Chapters> getChapter(String jsonStr)  {
  final res = json.jsonDecode(jsonStr);
  Main main = standardSerializers.deserializeWith(Main.serializer, res);
  //print(main);
  return main.chapters.map((Chapters chap)=>chap).toList();
}
