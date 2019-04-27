import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'dart:convert' as json;
import 'package:flutter_quran/src/quran/Serializers.dart';
import 'package:built_value/serializer.dart';

part 'Namaz_model.g.dart';

abstract class Namaz implements Built<Namaz, NamazBuilder> {
  static Serializer<Namaz> get serializer => _$namazSerializer;

  Namaz._();

  factory Namaz([updates(NamazBuilder b)]) = _$Namaz;

  String get title; // "",
  String get query; //: "karachi",
  //"for": "daily",
  int get method; // 3,
  String
      get prayer_method_name; // "University Of Islamic Sciences, Karachi (Hanafi)",
  String get daylight; // "0",
  String get timezone; // "5",
  String
      get map_image; // "https://maps.google.com/maps/api/staticmap?center=24.893379,67.028061&sensor=false&zoom=13&size=300x300",
  String get sealevel; //11",
  TodayWeather get today_weather; //
  /* {
  "pressure": 1008,
  "temperature": "35"
  },*/
  String get link; //: "http://muslimsalat.com/karachi",
  String get qibla_direction; // "267.65",
  String get latitude; // "24.893379",
  String get longitude; // "67.028061",
  String get address; // "",
  String get city; //: "Karachi",
  String get state; // "Sindh",
  String get postal_code; // "",
  String get country; //: "Pakistan",
  String get country_code; // "PK",
  BuiltList<Items> get items;

  /*[
  {
  "date_for": "2019-4-27",
  "fajr": "4:39 am",
  "shurooq": "5:56 am",
  "dhuhr": "12:29 pm",
  "asr": "5:05 pm",
  "maghrib": "7:03 pm",
  "isha": "8:19 pm"
  }
  ],*/
  int get status_valid; //: 1,
  int get status_code; // 1,
  String get status_description; // "Success."

  String toJson() {
    return json.jsonEncode(serializers.serializeWith(Namaz.serializer, this));
  }

  static Namaz fromJson(String jsonString) {
    return serializers.deserializeWith(
        Namaz.serializer, json.jsonDecode(jsonString));
  }
}

abstract class TodayWeather
    implements Built<TodayWeather, TodayWeatherBuilder> {
  static Serializer<TodayWeather> get serializer => _$todayWeatherSerializer;

  TodayWeather._();

  factory TodayWeather([updates(TodayWeatherBuilder b)]) = _$TodayWeather;

  int get pressure; // 1008,
  String get temperature; //: "35"

}

abstract class Items implements Built<Items, ItemsBuilder> {
  static Serializer<Items> get serializer => _$itemsSerializer;

  Items._();

  factory Items([updates(ItemsBuilder b)]) = _$Items;

  String get date_for; //: "2019-4-27",
  String get fajr; //": "4:39 am",
  String get shurooq; //": "5:56 am",
  String get dhuhr; //": "12:29 pm",
  String get asr; //": "5:05 pm",
  String get maghrib; //": "7:03 pm",
  String get isha; //": "8:19 pm"
}

List<Items> getTiming(String jsoString) {

  final res = json.jsonDecode(jsoString);
  Namaz namaz = standardSerializers.deserializeWith(Namaz.serializer, res);

  return namaz.items.map((Items items) => items).toList();
}
