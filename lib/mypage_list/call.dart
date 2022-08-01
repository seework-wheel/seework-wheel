import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_wheel/bottompage/bottom_list/mypage.dart';

class Call extends StatelessWidget {
  const Call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 310,),
          Container(
            width: 250,
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xFFF2F2F2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text('                회원탈퇴시  \n         기존에 있던 정보가\n             다 사라집니다.\n    그래도 탈퇴하시겠습니까?', style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),),
          ),
          Row(
            children: [
              SizedBox(width: 75,),
              ElevatedButton(
                onPressed: () {},
                child: Text("           예          "),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFF3D5FB)) ),

              ),
              SizedBox(width: 8,),
              ElevatedButton(
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyPage()),
                );},
                child: Text("        아니요      "),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFF3D5FB)) ),

              ),
            ],

          )
        ],
      ),

    );
  }
}
