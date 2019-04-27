import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'dart:convert' as json;
import 'serializers.dart';
import 'package:built_value/serializer.dart';

part 'off_model.g.dart';

abstract class Model implements Built<Model, ModelBuilder> {
  static Serializer<Model> get serializer => _$modelSerializer;

  @nullable
  Data get data;

  @nullable
  int get code;

  @nullable
  String get status;

  Model._();

  factory Model([updates(ModelBuilder b)]) = _$Model;
}

abstract class Data implements Built<Data, DataBuilder> {
  static Serializer<Data> get serializer => _$dataSerializer;

  @nullable
  BuiltList<Surahs> get surahs;

  Data._();

  factory Data([updates(DataBuilder b)]) = _$Data;
}

abstract class Surahs implements Built<Surahs, SurahsBuilder> {
  static Serializer<Surahs> get serializer => _$surahsSerializer;

  @nullable
  int get number; //	1
  @nullable
  String get name; //	"سورة الفاتحة"
  @nullable
  String get englishName; //	"Al-Faatiha"
  @nullable
  String get englishNameTranslation; //	"The Opening"
  @nullable
  String get revelationType; //	"Meccan"
  @nullable
  BuiltList<Ayahs> get ayahs;

  Surahs._();

  factory Surahs([updates(SurahsBuilder b)]) = _$Surahs;
}

abstract class Ayahs implements Built<Ayahs, AyahsBuilder> {
  static Serializer<Ayahs> get serializer => _$ayahsSerializer;

  @nullable
  int get number; //	1
  @nullable
  String get text; //	"\ufeffبِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ"
  @nullable
  int get numberInSurah; //	1
  @nullable
  int get juz; //	1
  @nullable
  int get manzil; //	1
  @nullable
  int get page; //	1
  @nullable
  int get ruku; //1
  @nullable
  int get hizbQuarter; //	1
//  @nullable
//  bool get sajda; //	false

  Ayahs._();

  factory Ayahs([updates(AyahsBuilder b)]) = _$Ayahs;
}

List<Surahs> get_arabic_ayahs(String strjson) {
  final res = json.jsonDecode(strjson);

  Model model = standardSerializers.deserializeWith(Model.serializer, res);
  return model.data.surahs.map((Surahs surahs) => surahs).toList();
}
