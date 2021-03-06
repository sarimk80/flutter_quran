import 'package:flutter/material.dart';
import 'package:flutter_quran/src/hadith/hadith_model/Hadith.dart';
import 'bloc/Hadith_bloc.dart';

class HadithPage extends StatefulWidget {
  @override
  _HadithPageState createState() => _HadithPageState();
}

class _HadithPageState extends State<HadithPage> {
  HadithBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = HadithBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hadith"),
      ),
      body: StreamBuilder(
          stream: _bloc.output,
          builder: (BuildContext context, AsyncSnapshot<Hadith> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return StreamBuilder(
                  stream: _bloc.stringoutput,
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot1) {
                    if (snapshot1.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return ListView(
                        padding: EdgeInsets.all(25),
                        children: <Widget>[
                          Text(snapshot.data.ref),
                          SizedBox(height: 80),
                          Text(snapshot.data.text),
                          SizedBox(height: 20),

                        ],
                      );
                    }
                  });
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _bloc=HadithBloc();
          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }
}
