import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_quran/src/quran/model/Chapters.dart';


class ChapterBloc {
  var _chap = <Chapters>[];



  // ignore: non_constant_identifier_names
  final _HomePageController = StreamController<List<Chapters>>();

  StreamSink<List<Chapters>> get _incontroller => _HomePageController.sink;

  Stream<List<Chapters>> get output => _HomePageController.stream;

  BuildContext context;
  ChapterBloc(this.context) {

    update(this.context);
  }

  Future<void> update(BuildContext context) async {
    _chap = await getChapters(context);
    _incontroller.add(_chap);
  }

  Future<List<Chapters>> getChapters(BuildContext context) async {

    final data = await DefaultAssetBundle.of(context)
        .loadString('assests/json/quran.json');

        return  getChapter(data);

  }

  void dispose() {
    _HomePageController.close();
  }
}
