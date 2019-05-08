import 'package:flutter/material.dart';
import 'package:flutter_quran/src/namaz_timing/model/Namaz_model.dart';
import 'bloc/NamazBloc.dart';
import 'package:location/location.dart';
import 'package:geocoder/geocoder.dart';

class Namaz extends StatefulWidget {
  @override
  _NamazState createState() => _NamazState();
}

class _NamazState extends State<Namaz> {
  NamazBloc _bloc;

  LocationData _currentLocation;

  Location _location = Location();

  Future<String> getLoc() async {
    _currentLocation = await _location.getLocation();

    try {
      final coordinates = new Coordinates(
          _currentLocation.latitude, _currentLocation.longitude);
      var addresses =
          await Geocoder.local.findAddressesFromCoordinates(coordinates);
      var first = addresses.first;
      _bloc = NamazBloc(first.locality);
      return first.locality;
    } catch (e) {
      _bloc = NamazBloc('Karachi');
    }
    return "Earth";
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Namaz"),
        ),
        body: FutureBuilder(
            future: getLoc(),
            builder: (BuildContext context, AsyncSnapshot snapshot_loc) {
              print(snapshot_loc.data);
              if (!snapshot_loc.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return StreamBuilder(
                    stream: _bloc.output,
                    builder: (BuildContext context,
                        AsyncSnapshot<List<Items>> snapshot_nam) {
                      if (snapshot_nam.connectionState ==
                          ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return Column(
                          children: <Widget>[
                            Text(snapshot_loc.data),
                            ListView(
                                shrinkWrap: true,
                                physics: ClampingScrollPhysics(),
                                children:
                                    snapshot_nam.data.map(_buildList).toList()),
                          ],
                        );
                      }
                    });
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
        Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.white.withOpacity(0.5)))),
            child: ListTile(
              title: Text(
                e.date_for,
                textAlign: TextAlign.center,
              ),
            )),
        Padding(padding: EdgeInsets.all(10)),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.white.withOpacity(0.5)))),
          child: ListTile(
            leading: Text(
              "Fajar:",
              style: TextStyle(fontSize: 20),
            ),
            title: Text(
              e.fajr,
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.white.withOpacity(0.5)))),
          child: ListTile(
            leading: Text(
              "Dhuhr:",
              style: TextStyle(fontSize: 20),
            ),
            title: Text(
              e.dhuhr,
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.white.withOpacity(0.5)))),
          child: ListTile(
            leading: Text(
              "Asr:",
              style: TextStyle(fontSize: 20),
            ),
            title: Text(
              e.asr,
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.white.withOpacity(0.5)))),
          child: ListTile(
            leading: Text(
              "Maghrib:",
              style: TextStyle(fontSize: 20),
            ),
            title: Text(
              e.maghrib,
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.white.withOpacity(0.5)))),
          child: ListTile(
            leading: Text(
              "Isha:",
              style: TextStyle(fontSize: 20),
            ),
            title: Text(
              e.isha,
              style: TextStyle(fontSize: 30),
            ),
          ),
        )
      ],
    );
  }
}
