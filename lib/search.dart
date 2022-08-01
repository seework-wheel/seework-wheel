import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFF2F2F2),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.black, size: 25),
                onPressed: () {
                  Navigator.pop(context);
                });
          }),
          title: SizedBox(
            height: 33,
            child: GestureDetector(
              onTap: () {
                print("hi");
                FocusScope.of(context).unfocus();
              },
              child: TextFormField(
                  style: TextStyle(fontSize: 15),
                  autofocus: true,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      hintText: ' 검색',
                      isDense: true,
                      contentPadding: EdgeInsets.all(8),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 25,
                        color: Color(0xFFF3D5FB),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Color(0xFFF3D5FB)),
                      ))),
            ),
          )),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      '전체삭제',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ))
              ],
            ),
            search_list("한동대학교"),
            search_list("커피유야"),
            search_list("스타벅스"),
            
          ],
        ),
        color: Colors.white,
      ),
    );
  }
}

Widget search_list(String name) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 20),
            TextButton(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.xmark,
                  size: 15,
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 17, 0),
          child: Divider(
            color: Colors.black,
            thickness: 0.5,
            height: 0,
          ),
        )
      ],
    ),
  );
}
