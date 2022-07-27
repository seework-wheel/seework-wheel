import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  //const Map({Key? key}) : super(key: key);
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Map> {
  Set<Marker> _markers = HashSet<Marker>();
  late GoogleMapController _mapController;
  late BitmapDescriptor _markerIcon;



  @override
  void initState() {
    super.initState();
    _setMarkerIcon();
  }

  void _setMarkerIcon() async {
    _markerIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'assets/icon/태풍.png');
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;

    setState(() {
      _markers.add(Marker(
        markerId: MarkerId("0"),
        position: LatLng(37.77483, -122.41942),
        infoWindow:
        InfoWindow(title: "San Francisco", snippet: "interesting city"),
        icon: _markerIcon,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F2),
        leading: Icon(Icons.menu, color: Colors.black, size: 35),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 13),
            Container(
              width: 290,
              height: 33,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    CupertinoIcons.search,
                    color: Color(0xFFF3D5FB),
                    size: 30,
                  ),
                  SizedBox(width: 7)
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFFF3D5FB),
                  ),
                  color: Colors.white),
            )
          ],
        ),
      ),
      body:
      Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled:true,
            zoomGesturesEnabled:true,
            zoomControlsEnabled: true,

            onMapCreated: _onMapCreated, //지도를 사용할 준비가 되었을 때 콜백
            initialCameraPosition:
            CameraPosition(target: LatLng(37.77483, -122.41942), zoom: 12),
            markers: _markers,
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin:EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {  },
                    backgroundColor: Color(0xFFF3D5FB) ,
                    child: Icon(
                        CupertinoIcons.location_solid,
                        size: 40,
                        color: Colors.white
                    ),
                  ),
                ),
                Container(
                  margin:EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {  },
                    backgroundColor: Color(0xFFF3D5FB),
                    child: Icon(
                        CupertinoIcons.add_circled,
                        size: 40,
                        color: Colors.white
                    ),
                  ),
                )
              ],

            ),
          ),
        ],

      ),



    );
  }
}