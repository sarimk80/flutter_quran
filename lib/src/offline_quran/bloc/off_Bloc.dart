import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_quran/src/verses/surah/Surah_model.dart';

class Bloc {
  var data_arabic = <Data>[];

  final _surahController = StreamController<List<Data>>();

  StreamSink<List<Data>> get _incontroller => _surahController.sink;

  Stream<List<Data>> get output => _surahController.stream;

  BuildContext context;
  int id;

  Bloc(this.context,this.id) {
    update(this.context,this.id);
  }

  Future<void> update(BuildContext context,int id) async {
    data_arabic = await getArabic_surah(context,id);

    _incontroller.add(data_arabic);
  }

  Future<List<Data>> getArabic_surah(BuildContext context,int id) async {
    final data = await DefaultAssetBundle.of(context)
        .loadString('assests/json/${id}.json');
    return get_arabic_ayahs(data);


  }

  void dispose() {
    _surahController.close();
  }
}
