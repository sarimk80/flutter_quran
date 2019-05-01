import 'dart:async';

import 'package:http/http.dart' as http;

import 'package:flutter_quran/src/quran/model/Chapters.dart';
import 'dart:collection';

class HomePagebloc {
  var _chap = <Chapters>[];

  HashMap<int, List<Chapters>> _cashedChapters;

  // ignore: non_constant_identifier_names
  final _HomePageController = StreamController<List<Chapters>>();

  StreamSink<List<Chapters>> get _incontroller => _HomePageController.sink;

  Stream<List<Chapters>> get output => _HomePageController.stream;

  HomePagebloc() {
    _cashedChapters = HashMap<int, List<Chapters>>();

    update();
  }

  Future<void> update() async {
    _chap = await getChapters();
    _incontroller.add(_chap);
  }

  Future<List<Chapters>> getChapters() async {
    if (!_cashedChapters.containsKey(1)) {
      final storiesUrl = 'http://staging.quran.com:3000/api/v3/chapters';
      final storyRes = await http.get(Uri.parse(storiesUrl));

      if (storyRes.statusCode == 200) {
        _cashedChapters[1] = getChapter(storyRes.body);
      } else {
        throw Exception("Error");
      }
    }
    return _cashedChapters[1];
  }

  void dispose() {
    _HomePageController.close();
  }
}
