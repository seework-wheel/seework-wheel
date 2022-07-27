import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Look extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Look> {
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
                    size: 33,
                  ),
                  SizedBox(width: 7)
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xFFF3D5FB),
                  ),
                  color: Colors.white),
            )
          ],
        ),
      ),
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
        SizedBox(
          height: 20,
          width: 20,
        ),
        Row(

        ),

      ],
    ),
  );
}
