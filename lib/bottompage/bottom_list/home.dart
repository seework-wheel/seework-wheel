import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_wheel/bottompage/bottom_list/mypage.dart';
import '../bottom_click.dart';

import 'map.dart';

class Home extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            //Padding(padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 24),
                Menu(context, "전체", Icons.menu, 27),
                SizedBox(width: 45),
                Menu(context, "음식점", Icons.restaurant_menu, 27),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 24),
                Menu(context, "카페", Icons.local_cafe, 27),
                SizedBox(
                  width: 45,
                  height: 150,
                ),
                Menu(context, "숙박\n시설", Icons.hotel, 27),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 24),
                Menu(context, "여행\n명소", Icons.flight, 27),
                SizedBox(
                  width: 45,
                ),
                Menu(context, "쇼핑\n유통", Icons.shopping_cart, 27),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget Menu(BuildContext context, String name, IconData icon, double size) {
  return ClipRRect(
    //모서리가 둥글게
    borderRadius: BorderRadius.circular(20),
    child: Container(
      color: Colors.white,
      width: 150,
      height: 150,
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Map()),
          );
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 0, color: Colors.white),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: size,
              ),
            ),
            Expanded(
              child: Row(),
            ),
            // SizedBox(
            //   width: 30,
            //   height: 30,
            // ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Icon(
                icon,
                color: Color(0xFFF3D5FB),
                size: 55,
              ),
            ]),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    ),
  );
}
