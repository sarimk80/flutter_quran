import 'dart:async';
import 'package:flutter_quran/src/verses/surah/Surah_model.dart';
import 'package:http/http.dart' as http;


class Surah_bloc {
  var data_arabic = <Data>[];

  final _surahController = StreamController<List<Data>>();

  StreamSink<List<Data>> get _incontroller => _surahController.sink;

  Stream<List<Data>> get output => _surahController.stream;

  int id;
  String name;

  Surah_bloc(this.id, this.name) {
    update(this.id, this.name);
  }

//  Future<void> database() async {
//    final directory = await getApplicationDocumentsDirectory();
//    final file = File('${directory.path}/my_file.json');
//    final text = 'Hello World!';
//    await file.writeAsString(text);
//    print('saved');
//
//    String _text = await file.readAsString();
//    print(_text);
//  }

  Future<void> update(int id, String name) async {
    data_arabic = await getArabic_surah(id, name);

    _incontroller.add(data_arabic);
  }

  Future<List<Data>> getArabic_surah(int id, String name) async {
    //print("Does not Contains Key${id}");
    final Surah_url =
        'http://api.alquran.cloud/v1/surah/${id}/editions/${name}';
    final response = await http.get(Surah_url);
    if (response.statusCode == 200) {
      return get_arabic_ayahs(response.body);
    } else {
      NullThrownError();
    }
  }

  void dispose() {
    _surahController.close();
  }
}
