import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  '프로필 수정',
                  style: TextStyle(
                    color: Color(0xff9F76A6),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '로그아웃',
                  style: TextStyle(
                    color: Color(0xff9F76A6),
                  ),
                ),
                SizedBox(
                  width: 15,
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(70.0),
                  child: Image.asset(
                    'assets/icon/dog.jpg',
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "홍길동님",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "12345678@handong.ac.kr",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(indent: 0, color: Colors.grey),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                TextButton.icon(
                  // <-- TextButton
                  onPressed: () {},
                  icon: Icon(
                    Icons.storefront,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  label: Text(
                    '내가 등록한 가게',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 170,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.navigate_next),
                  iconSize: 20,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                TextButton.icon(
                  // <-- TextButton
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  label: Text(
                    '내가 찜한 가게',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 183,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.navigate_next),
                  iconSize: 20,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                TextButton.icon(
                  // <-- TextButton
                  onPressed: () {},
                  icon: Icon(
                    Icons.campaign,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  label: Text(
                    '공지 사항',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 211,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.navigate_next),
                  iconSize: 20,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                TextButton.icon(
                  // <-- TextButton
                  onPressed: () {},
                  icon: Icon(
                    Icons.phone_in_talk,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  label: Text(
                    '고객 센터',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 211,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.navigate_next),
                  iconSize: 20,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                TextButton.icon(
                  // <-- TextButton
                  onPressed: () {},
                  icon: Icon(
                    Icons.logout,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  label: Text(
                    '회원 탈퇴',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 211,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.navigate_next),
                  iconSize: 20,
                ),
              ],
            )
          ],
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFF3D5FB),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: '둘러보기'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '마이페이지'),
        ],
      ),*/
    );
  }
}
