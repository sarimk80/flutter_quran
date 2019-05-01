import 'package:flutter/material.dart';
import 'package:flutter_quran/src/quran/model/Chapters.dart';
import 'package:flutter_quran/src/verses/VersesPage.dart';

class SearchBar extends SearchDelegate<Chapters> {
  var _chap = <Chapters>[];

  SearchBar(this._chap);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final result = _chap.where((a) => a.name_simple.contains(query));

    return ListView(
      children: result
          .map<ListTile>((a) => ListTile(
                title: Text(a.name_simple),
                subtitle: Text(a.revelation_place),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Verses(
                                id: a.id,
                                name: a.name_simple,
                              )));
                },
              ))
          .toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final result =
        _chap.where((a) => a.name_simple.toLowerCase().contains(query));

    return ListView(
      children: result
          .map<ListTile>((a) => ListTile(
                title: Text(a.name_simple),
                subtitle: Text(a.revelation_place),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Verses(
                                id: a.id,
                                name: a.name_simple,
                              )));
                },
              ))
          .toList(),
    );
  }
}
