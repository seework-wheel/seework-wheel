import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'maps.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: 150,
              height: 20,
            ),
            //Padding(padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24,
                  height: 150,
                ),
                ClipRRect(
                  //모서리가 둥글게
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    width: 150,
                    height: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        print("ggg");
                        Get.to(Map);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " 전체",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                            height: 30,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.menu,
                                  color: Color(0xFFF3D5FB),
                                  size: 70,
                                ),
                              ])
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                  height: 150,
                ),
                ClipRRect(
                  //모서리가 둥글게
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    width: 150,
                    height: 150,
                    child: InkWell(
                      onTap: (){

                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " 음식점",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                            height: 30,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.restaurant_menu,
                                  color: Color(0xFFF3D5FB),
                                  size: 70,
                                ),
                              ])
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 350,
              height: 50,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24,
                  height: 150,
                ),
                ClipRRect(
                  //모서리가 둥글게
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    width: 150,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " 카페 \n & \n 디저트",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.local_cafe,
                                color: Color(0xFFF3D5FB),
                                size: 60,
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                  height: 150,
                ),
                ClipRRect(
                  //모서리가 둥글게
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    width: 150,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " 숙박\n 시설",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.hotel,
                                color: Color(0xFFF3D5FB),
                                size: 60,
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 350,
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24,
                  height: 150,
                ),
                ClipRRect(
                  //모서리가 둥글게
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    width: 150,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " 여행 \n 명소",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.flight,
                                color: Color(0xFFF3D5FB),
                                size: 60,
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                  height: 150,
                ),
                ClipRRect(
                  //모서리가 둥글게
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    width: 150,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " 쇼핑 \n 유통",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Color(0xFFF3D5FB),
                                size: 60,
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: '둘러보기'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '마이페이지'),
        ],
      ),
    );
  }
}