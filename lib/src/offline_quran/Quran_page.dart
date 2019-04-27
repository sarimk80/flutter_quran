import 'package:flutter/material.dart';
import 'off_model.dart';
import 'off_Bloc.dart';

class Quran_page extends StatefulWidget {
  @override
  _Quran_pageState createState() => _Quran_pageState();
}

class _Quran_pageState extends State<Quran_page> {
  Bloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = Bloc(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Quran"),
        ),
        body: StreamBuilder(
            stream: _bloc.output,
            builder:
                (BuildContext context, AsyncSnapshot<List<Surahs>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(

//                  cacheExtent: 20.0,
                  padding: EdgeInsets.all(10),
                  itemCount: 1,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListView(
                      padding: EdgeInsets.all(2),
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      children: snapshot.data.map(_builditem).toList(),
                    );
                  },
                );
              }
            }));
  }

  Widget _builditem(Surahs e) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(
              child: Text(
            e.name,
            style: TextStyle(color: Color(0xffecf0f1), fontSize: 35),
          )),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        style: BorderStyle.solid,
                        width: 2,
                        color: Colors.white.withOpacity(0.5)))),
            child: ListView(
              children: e.ayahs
                  .map((Ayahs ayahs) => ListTile(
                        isThreeLine: true,
                        contentPadding: EdgeInsets.all(10),
                        subtitle: Text(
                          ayahs.text,
                          style: TextStyle(
                              textBaseline: TextBaseline.alphabetic,
                              fontSize: 25,
                              wordSpacing: 6,
                              letterSpacing: 5,
                              color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                      ))
                  .toList(),
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }
}
