import 'package:flutter/material.dart';
import 'package:flutter_quran/src/offline_quran/bloc/Chapter_bloc.dart';
import 'package:flutter_quran/src/quran/model/Chapters.dart';
import 'package:flutter_quran/src/offline_quran/Quran_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_quran/src/offline_quran/chapters/user_info/UserInfo.dart';

class ChapterPage extends StatefulWidget {
  @override
  _ChapterPageState createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  ChapterBloc _bloc;
  String name;
  int id;
  double position;

  Future<UserInfo> getString() async {
    final prefs = await SharedPreferences.getInstance();
    name = prefs.getString("Name") ?? "Null";
    id = prefs.getInt("id") ?? 1;
    position = prefs.getDouble("position") ?? 0.0;
    UserInfo _userinfo = UserInfo(name, id, position);
    return _userinfo;
  }

  @override
  void initState() {
    super.initState();
    _bloc = ChapterBloc(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getString(),
        builder: (BuildContext context, AsyncSnapshot<UserInfo> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Scaffold(
              appBar: AppBar(
                title: Text("Offline Quran"),
              ),
              body: StreamBuilder(
                  stream: _bloc.output,
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Chapters>> snapshot_chap) {
                    if (snapshot_chap.connectionState ==
                        ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return ListView(
                          children:
                              snapshot_chap.data.map(_buildItem).toList());
                    }
                  }),
              floatingActionButton: FlatButton(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Quran_page(
                                id: snapshot.data.id,
                                name: snapshot.data.name,
                                position: snapshot.data.position,
                              )));
                },
                child: Text(
                  snapshot.data.name,
                  style: TextStyle(fontSize: 20),
                ),
                color: Color(0xff12E4D6),
              ),
            );
          }
        });
  }

  Widget _buildItem(Chapters chap) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.white.withOpacity(0.5)))),
          child: ListTile(
            title: Text('${chap.name_simple}'),
            subtitle: Text('${chap.revelation_place}'),
            trailing: Text(
              '${chap.name_arabic}',
            ),
            leading: Text('${chap.chapter_number}'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Quran_page(
                            id: chap.id,
                            name: chap.name_arabic,
                            position: 0.0,
                          )));
            },
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }
}
