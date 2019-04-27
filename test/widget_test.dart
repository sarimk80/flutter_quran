// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_quran/main.dart';
import 'package:flutter_quran/src/namaz_timing/model/Namaz_model.dart';
import 'package:flutter_quran/src/hadith/hadith_model/Hadith.dart';


void main() {


  test("Timing", () async{
    final storiesUrl =
        'https://muslimsalat.com/karachi.json?key=a799a0c74cbbf705430b96fe60741b9c';
    final storyRes = await http.get(Uri.parse(storiesUrl));
    //print(storyRes.body);
    expect(getTiming(storyRes.body), isNotNull);
  });

  test('Haidth', () async{
    final storiesUrl =
        'https://muflihun.com/svc/hadithtoday';
    final storyRes = await http.get(Uri.parse(storiesUrl));
    //print(storyRes.body);
    expect(gethadith(storyRes.body), isNotNull);

  });
}
