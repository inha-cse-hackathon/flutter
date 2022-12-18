import 'package:cse_hackathon_2022/inha/google/GoogleLogin.dart';
import 'package:cse_hackathon_2022/inha_story/InHaAuth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


import 'package:provider/provider.dart';

import 'dart:async';

import 'SignInButton.dart';




class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  /// 로그인 버튼을 누르면 로그인 창이 열리고 로그인을 하면 uid를 얻음
  /// uid가 없으면 이동하지 않는다.
  /// 서버 DB에 uid에 알맞는 유저 정보가 있으면 그 정보를 로컬 DB에 저장하고 홈 화면으로 이동한다.
  /// 서버 DB에 uid에 알맞는 유저 정보가 없으면 uid와 provider를 넘기면서 회원가입 화면으로 이동한다.

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  Future<void> _handleSignIn() async {
    try{
      await InhaAuth.signIn();
    }
    catch(e){
      print(e);
    }
    print(InhaAuth.currentUser);
  }



  // void navigate(String uid, String provider) async {
  //   /// 서버 DB에 uid에 알맞는 유저 정보가 있으면 홈화면으로 이동하고
  //   /// 없다면 회원가입 화면으로 이동한다.
  //
  //   // 회원가입 하다가 나가도 회원가입 할 수 있게 DB에 저장 하기
  //   UserProfile.save(UserProfile(uid: uid, provider: provider));
  //
  //   print("uid: ${uid}\n서버에 계정이 있는지 확인중... ");
  //
  //   // 파이어베이스에 uid에 맞는 저장소가 있는지 확인한다.
  //   FirebaseAirPort airPort = FirebaseAirPort(uid: uid);
  //   UserProfile? userProfile = await airPort.get();
  //
  //   if (userProfile == null) {
  //     print("서버 DB에 동일한 유저 정보가 없습니다. 회원가입 이동...");
  //     NavigeteRegister(uid, provider);
  //   } else {
  //     print("서버 DB에 동일한 유저 정보가 있습니다. 홈 화면 이동...");
  //     await UserProfile.save(userProfile);
  //     Provider.of<HomeModel>(context, listen: false).setClass();
  //     NavigateHome();
  //   }
  // }
  //
  // void NavigeteRegister(String uid, String provider) {
  //   print("회원가입 화면 이동합니다.");
  //   Navigator.pushAndRemoveUntil(
  //     context,
  //     CupertinoPageRoute(
  //       builder: (context) => Register(uid: uid, provider: provider),
  //     ),
  //     (route) => false,
  //   );
  // }
  //
  // void NavigateHome() {
  //   print("홈 화면 이동합니다.");
  //   Navigator.pushAndRemoveUntil(
  //     context,
  //     CupertinoPageRoute(
  //       builder: (context) => const MyHomePage(),
  //     ),
  //     (route) => false,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff99765F),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Text(
                "Title",
                style: TextStyle(
                    fontSize: 52,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Flexible(
                flex: 3,
                child: Container(),
              ),
              loginButtonSection(),
              Flexible(
                flex: 1,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginButtonSection() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: SignInButton(
                onPressed: (){
                  _handleSignIn();
                }, style: SignInButtonStyle.google),
          ),
        ],
      ),
    );
  }
}
