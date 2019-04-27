import 'package:flutter/material.dart';
import 'surah/Surah_bloc.dart';
import 'surah/Surah_model.dart';

class ArabicPage extends StatefulWidget {
  final int id;

  ArabicPage({Key key, this.id}) : super(key: key);

  @override
  _ArabicPageState createState() => _ArabicPageState();
}

class _ArabicPageState extends State<ArabicPage> with AutomaticKeepAliveClientMixin<ArabicPage>{
  Surah_bloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = Surah_bloc(widget.id, "quran-uthmani");
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: _bloc.output,
        builder: (BuildContext context, AsyncSnapshot<List<Data>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Container(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListView(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      children: snapshot.data.map(_buildList).toList());
                });
          }
        });
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  Widget _buildList(Data e) {
    return ListView(
      children: e.ayahs
          .map((Ayahs ayahs) => ListTile(
        contentPadding: EdgeInsets.all(10),
                title: Text(
                  ayahs.text,
                  style: TextStyle(fontSize: 25, wordSpacing: 5),
                  textAlign: TextAlign.right,
                ),
              ))
          .toList(),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
    );
  }

  @override

  bool get wantKeepAlive => true;
}
