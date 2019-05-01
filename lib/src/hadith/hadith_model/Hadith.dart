import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'dart:convert' as json;
import 'package:flutter_quran/src/serializers/Serializers.dart';

part 'Hadith.g.dart';

abstract class Hadith implements Built<Hadith, HadithBuilder> {
  static Serializer<Hadith> get serializer => _$hadithSerializer;

  Hadith._();

  factory Hadith([updates(HadithBuilder b)]) = _$Hadith;

  @nullable
  String get text;
  //": "Prophet  ﷺ  said, \"Whoever establishes prayers during the nights of ramadan faithfully out of sincere faith and hoping to attain Allah's rewards (not for showing off), all his past sins will be forgiven.\"",

  @nullable
  String get link; //": "http://muflihun.com/bukhari/2/36",

  @nullable
  String get ref; //": "al-Bukhari 2/36"

}

Hadith gethadith(String jsonStr) {
  final res = json.jsonDecode(jsonStr);

  Hadith hadith = standardSerializers.deserializeWith(Hadith.serializer, res);

  return hadith;
}
