import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'bottompage/bottom_click.dart';
import 'bottompage/bottom_list/home.dart';
import 'login.dart';


class wheelApp extends StatelessWidget {
  const wheelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //데이터를 어떤 미래를 불러오겠다
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text("firebase load failed"),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return Login();
        }
        return const CircularProgressIndicator(); //로딩중
      },
    );
  }
}
