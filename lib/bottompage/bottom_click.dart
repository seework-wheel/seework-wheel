import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_list/home.dart';
import 'bottom_list/look.dart';
import 'bottom_list/mypage.dart';
import 'bottom_list/map.dart';

class Bottom extends StatelessWidget {
  // const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page();
  }
}

class Page extends StatefulWidget {
  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  int currentIndex = 0;
  final screens = [
    Home(),
    Map(),
    Look(),
    MyPage(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Color(0xFFF3D5FB),
        unselectedItemColor: Colors.black,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: '지도'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: '둘러보기'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '마이페이지'),
        ],
      ),
    );
  }

  void setIndex(int x){
    currentIndex=x;
  }


}
