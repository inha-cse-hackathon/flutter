import 'package:cse_hackathon_2022/inha_story/InHaAuth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'google_signin/SignIn.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("프로필"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("프로필"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("이메일:"),
                Text("닉네임:"),
                Text("학과:"),
              ],),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(" ${InhaAuth.currentUser.email}"),
                  Text(" ${InhaAuth.currentUser.nickname}"),
                  Text(" ${InhaAuth.currentUser.department}"),
                ],
              ),
            ],),


            CupertinoButton(
                child: Text("로그아웃"),
                onPressed: () async {
                  await InhaAuth.signOut();

                  Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => SignIn(),
                    ),
                    (route) => false,
                  );
                })
          ],
        ),
      ),
    );
  }
}
