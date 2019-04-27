import 'package:flutter/material.dart';
import 'package:flutter_quran/src/namaz_timing/model/Namaz_model.dart';
import 'bloc/NamazBloc.dart';

class Namaz extends StatefulWidget {
  @override
  _NamazState createState() => _NamazState();
}

class _NamazState extends State<Namaz> {
  NamazBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = NamazBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Namaz"),
        ),
        body: StreamBuilder(
            stream: _bloc.output,
            builder:
                (BuildContext context, AsyncSnapshot<List<Items>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView(
                    children: snapshot.data.map(_buildList).toList());
              }
            }));
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }

  Widget _buildList(Items e) {
    return ListView(
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children: <Widget>[
        ListTile(title: Text(e.date_for),),
        Padding(padding: EdgeInsets.all(10)),
        ListTile(
          leading: Text(
            "Fajar:",
            style: TextStyle(fontSize: 20),
          ),
          title: Text(
            e.fajr,
            style: TextStyle(fontSize: 30),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        ListTile(
          leading: Text(
            "Dhuhr:",
            style: TextStyle(fontSize: 20),
          ),
          title: Text(
            e.dhuhr,
            style: TextStyle(fontSize: 30),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        ListTile(
          leading: Text(
            "Asr:",
            style: TextStyle(fontSize: 20),
          ),
          title: Text(
            e.asr,
            style: TextStyle(fontSize: 30),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        ListTile(
          leading: Text(
            "Maghrib:",
            style: TextStyle(fontSize: 20),
          ),
          title: Text(
            e.maghrib,
            style: TextStyle(fontSize: 30),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        ListTile(
          leading: Text(
            "Isha:",
            style: TextStyle(fontSize: 20),
          ),
          title: Text(
            e.isha,
            style: TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }
}
