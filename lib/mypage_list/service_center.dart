import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceCenter extends StatelessWidget {
  const ServiceCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 390,
          ),
          Container(
            width: 270,
            height: 315,
            decoration: BoxDecoration(
              color: Color(0xFFF2F2F2),
              borderRadius: BorderRadius.circular(20),
            ),
           /* IconButton(
              onPressed: () {},
              icon: Icon(Icons.navigate_next),
              iconSize: 20,
            ),*/
            child: Text(
              '\n            안녕하세요!\n    무엇을 도와드릴까요?\n\n      메일로 불편하신점을 \n       보내주시면 됩니다!\n\n    1234567@naver.com\n          054-123-4567',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),

          ),
        ],
      ),
    );
  }
}
