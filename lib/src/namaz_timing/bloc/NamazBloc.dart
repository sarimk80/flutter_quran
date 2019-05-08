import 'dart:async';
import 'dart:collection';
import 'package:http/http.dart' as http;
import 'package:flutter_quran/src/namaz_timing/model/Namaz_model.dart';

class NamazBloc {
  var _chap = <Items>[];

  HashMap<int, List<Items>> _cashedChapters;

  final _HomePageController = StreamController<List<Items>>();

  StreamSink<List<Items>> get _incontroller => _HomePageController.sink;

  Stream<List<Items>> get output => _HomePageController.stream;

  String place;

  NamazBloc(this.place) {
    _cashedChapters = HashMap<int, List<Items>>();

    update(this.place);
  }

  Future<void> update(String place) async {
    _chap = await getChapters(place);
    _incontroller.add(_chap);
  }

  Future<List<Items>> getChapters(String place) async {
    if (!_cashedChapters.containsKey(1)) {
      final storiesUrl =
          'https://muslimsalat.com/${place}.json?key=a799a0c74cbbf705430b96fe60741b9c';
      final storyRes = await http.get(Uri.parse(storiesUrl));

      if (storyRes.statusCode == 200) {
        _cashedChapters[1] = getTiming(storyRes.body);
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
