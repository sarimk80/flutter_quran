import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'dart:convert' as json;
import 'serializers.dart';

part 'Surah_model.g.dart';

abstract class Surah implements Built<Surah, SurahBuilder> {
  static Serializer<Surah> get serializer => _$surahSerializer;

  BuiltList<Data> get data;

  Surah._();

  factory Surah([updates(SurahBuilder b)]) = _$Surah;
}

abstract class Data implements Built<Data, DataBuilder> {
  static Serializer<Data> get serializer => _$dataSerializer;

  @nullable
  int get number; //": 114,
  @nullable
  String get name; //": "سورة الناس",
  @nullable
  String get englishName; //: "An-Naas",
  @nullable
  String get englishNameTranslation; //": "Mankind",
  String get revelationType; //": "Meccan",
  int get numberOfAyahs; //": 6,
  BuiltList<Ayahs> get ayahs;

  Data._();

  factory Data([updates(DataBuilder b)]) = _$Data;
}

abstract class Ayahs implements Built<Ayahs, AyahsBuilder> {
  static Serializer<Ayahs> get serializer => _$ayahsSerializer;

  int get number; //": 6231,
  String get text; //": "بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ",
  int get numberInSurah; //": 1,
  int get juz; //": 30,
  int get manzil; //": 7,
  int get page; //": 604,
  int get ruku; //": 556,
  int get hizbQuarter; //": 240,
//  @nullable
//  bool get sajda; ": false
  Ayahs._();

  factory Ayahs([updates(AyahsBuilder b)]) = _$Ayahs;
}

List<Data> get_arabic_ayahs(String strjson) {
  final res = json.jsonDecode(strjson);

  Surah surah = standardSerializers.deserializeWith(Surah.serializer, res);
  return surah.data.map((Data data) => data).toList();
}



