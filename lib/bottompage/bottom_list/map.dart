import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../search.dart';

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
        ImageConfiguration(), 'assets/icon/google.png');
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFF2F2F2),
            leading: Builder(builder: (BuildContext context) {
              return IconButton(
                  icon: new Icon(Icons.menu, color: Colors.black, size: 35),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  });
            }),
            title: SizedBox(
              height: 33,
              width: 300,
              child: OutlinedButton(
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child:
                            Text(
                                "검색할 단어를 입력하세요",
                                style: TextStyle(color: Colors.grey,)
                            ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.search, color: Color(0xFFF3D5FB) ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Search()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                      side: BorderSide(width: 1.0, color: Color(0xFFF3D5FB)))),
            )),
        body: Stack(
          children: [
            GoogleMap(
              myLocationButtonEnabled: true,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: true,

              onMapCreated: _onMapCreated,
              //지도를 사용할 준비가 되었을 때 콜백
              initialCameraPosition: CameraPosition(
                  target: LatLng(37.77483, -122.41942), zoom: 12),
              markers: _markers,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Color(0xFFF3D5FB),
                      child: Icon(CupertinoIcons.location_solid,
                          size: 40, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Color(0xFFF3D5FB),
                      child: Icon(CupertinoIcons.add_circled,
                          size: 40, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // 프로젝트에 assets 폴더 생성 후 이미지 2개 넣기
              // pubspec.yaml 파일에 assets 주석에 이미지 추가하기
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  // 현재 계정 이미지 set
                  backgroundImage: AssetImage('assets/icon/dog.jpg'),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: <Widget>[
                  // 다른 계정 이미지[] set
                  //CircleAvatar(
                  //backgroundColor: Colors.white,
                  //backgroundImage: AssetImage('assets/profile2.png'),
                  //),
                  // CircleAvatar(
                  //   backgroundColor: Colors.white,
                  //   backgroundImage: AssetImage('assets/profile2.png'),
                  // )
                ],
                accountName: Text('홍길동님'),
                accountEmail: Text('12345678@handong.ac.kr'),
                onDetailsPressed: () {
                  print('arrow is clicked');
                },
                decoration: BoxDecoration(
                    color: Color(0xFFF3D5FB),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0))),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: Text('음식점'),
                onTap: () {
                  print('Home is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: Text('카페&디저트'),
                onTap: () {
                  print('Setting is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('숙박시설'),
                onTap: () {
                  print('Q&A is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('여행명소'),
                onTap: () {
                  print('Q&A is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('쇼핑유통'),
                onTap: () {
                  print('Q&A is clicked');
                },
                trailing: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
