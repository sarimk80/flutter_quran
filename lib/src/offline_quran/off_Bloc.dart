import 'dart:async';
import 'dart:collection';
import 'dart:io';
import 'off_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Bloc {
  var data_arabic = <Surahs>[];

  final _surahController = StreamController<List<Surahs>>();

  StreamSink<List<Surahs>> get _incontroller => _surahController.sink;

  Stream<List<Surahs>> get output => _surahController.stream;

  BuildContext context;

  Bloc(this.context) {
    update(this.context);
  }

  Future<void> update(BuildContext context) async {
    data_arabic = await getArabic_surah(context);

    _incontroller.add(data_arabic);
  }

  Future<List<Surahs>> getArabic_surah(BuildContext context) async {
    String data = await DefaultAssetBundle.of(context)
        .loadString('assests/json/wholeQuran.json');

    return get_arabic_ayahs(data);
    //print("Does not Contains Key${id}");
//  final Surah_url =
//      'http://api.alquran.cloud/v1/surah/${id}/editions/${name}';
//  final response = await http.get(Surah_url);
//  if (response.statusCode == 200) {
//    return get_arabic_ayahs(response.body);
//  } else {
//    NullThrownError();
//  }
  }

  void dispose() {
    _surahController.close();
  }
}
