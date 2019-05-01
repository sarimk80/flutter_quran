import 'package:flutter/material.dart';
import 'package:flutter_quran/src/verses/surah/Surah_model.dart';
import 'package:flutter_quran/src/offline_quran/bloc/off_Bloc.dart';

class Quran_page extends StatefulWidget {
  final int id;
  final String name;

  Quran_page({Key key, this.id, this.name}) : super(key: key);

  @override
  _Quran_pageState createState() => _Quran_pageState();
}

class _Quran_pageState extends State<Quran_page> {
  Bloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = Bloc(context, widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: StreamBuilder(
          stream: _bloc.output,
          builder: (BuildContext context, AsyncSnapshot<List<Data>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return ListView(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        children: snapshot.data.map(_builtlist).toList());
                  });
            }
          }),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }

  Widget _builtlist(Data e) {
    return Column(
      children: <Widget>[
        Text(
          e.name,
          style: TextStyle(fontSize: 30),
        ),
        Padding(padding: EdgeInsets.all(10)),
        ListView(
          children: e.ayahs
              .map((Ayahs ayahs) => ListTile(
                    title: Text(
                      ayahs.text,
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 25),
                    ),
                  ))
              .toList(),
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
        ),
      ],
    );
  }
}
