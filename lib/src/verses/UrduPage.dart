import 'package:flutter/material.dart';
import 'surah/Surah_bloc.dart';
import 'surah/Surah_model.dart';

class UrduPage extends StatefulWidget {
  final int id;

  UrduPage({Key key, this.id}) : super(key: key);

  @override
  _UrduPageState createState() => _UrduPageState();
}

class _UrduPageState extends State<UrduPage>
    with AutomaticKeepAliveClientMixin<UrduPage> {
  Surah_bloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = Surah_bloc(widget.id, "ur.maududi");
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: _bloc.output,
        builder: (BuildContext context, AsyncSnapshot<List<Data>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Container(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return ListView.builder(
                addAutomaticKeepAlives: true,
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

  Widget _buildList(Data e) {
    return ListView(
      children: e.ayahs
          .map((Ayahs ayahs) => ListTile(
                title: Text(
                  ayahs.text,
                  style: TextStyle(fontSize: 20, wordSpacing: 2),
                  textAlign: TextAlign.right,
                ),
              ))
          .toList(),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
    );
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
