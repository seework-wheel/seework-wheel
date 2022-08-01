import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../search.dart';

class Look extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Look> {
  @override
  bool get wantKeepAlive => true;
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: Text("검색할 단어를 입력하세요",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.search, color: Color(0xFFF3D5FB)),
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
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Container(
                  // color: Color(0xFFF2F2F2),
                  width: 140,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFF858585),
                      ),
                      color: Color(0xFFF2F2F2)),
                  child: Text(
                    '      음식점',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                      color: Color(0xFF9F76A6),
                    ),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Container(
                  // color: Color(0xFFF2F2F2),
                  width: 140,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF858585),
                    ),
                    color: Color(0xFFF2F2F2),
                  ),
                  child: Text(
                    '        카페',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                      color: Color(0xFF9F76A6),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            information(),
            SizedBox(
              height: 25,
            ),
            information(),
            SizedBox(
              height: 25,
            ),
            information()
          ],
        ),
      ),
    );
  }
}

Widget information() {
  return Container(
    height: 150,
    width: 320,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Color(0xFF858585),
      ),
      color: Color(0xFFF2F2F2),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /* SizedBox(
          height: 20,
          width: 20,
        ),*/
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Image.asset(
              'assets/icon/school.png',
              height: 100,
              width: 80,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '한동대학교',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '주소',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                //실선 생성하기
                Text(
                  '전화번호',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 15),
            Icon(
              Icons.sensor_door,
              size: 40,
              color: Color(0xFFF3D5FB),
            ),
            Icon(
              Icons.accessible,
              size: 40,
              color: Color(0xFFF3D5FB),
            ),
            Icon(
              Icons.elevator,
              size: 40,
              color: Color(0xFFF3D5FB),
            ),
            Icon(
              Icons.local_parking,
              size: 40,
              color: Color(0xFFF3D5FB),
            )
          ],
        )
      ],
    ),
  );
}
