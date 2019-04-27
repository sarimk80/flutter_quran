import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter_quran/src/hadith/hadith_model/Hadith.dart';
import 'package:translator/translator.dart';
import 'dart:convert' as json;

class HadithBloc {
  var hadith = Hadith();
  final _HomePageController = StreamController<Hadith>();

  StreamSink<Hadith> get _incontroller => _HomePageController.sink;

  Stream<Hadith> get output => _HomePageController.stream;

  final _stringController = StreamController<String>();

  StreamSink<String> get _inString => _stringController.sink;

  Stream<String> get stringoutput => _stringController.stream;

  HadithBloc() {
    update();
  }

  Future<void> update() async {
    hadith = await getHadith();

    GoogleTranslator googleTranslator = GoogleTranslator();

    try {
      googleTranslator.translate(hadith.text, from: 'en', to: 'ch').then((s) {
        print(s);
        _stringController.add(s);
      });
    } catch (Exception) {}

    _incontroller.add(hadith);
  }

  Future<Hadith> getHadith() async {
    final storiesUrl = 'https://muflihun.com/svc/hadithtoday';
    final storyRes = await http.get(Uri.parse(storiesUrl));
    //print(storyRes.body);
    if (storyRes.statusCode == 200) {
      return gethadith(storyRes.body);
    }
  }

  void dispose() {
    _HomePageController.close();
    _stringController.close();
  }
}
