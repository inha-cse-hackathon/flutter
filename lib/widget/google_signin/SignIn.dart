import 'package:cse_hackathon_2022/inha/google/GoogleLogin.dart';
import 'package:cse_hackathon_2022/inha_story/InHaAuth.dart';
import 'package:cse_hackathon_2022/inha_story/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


import 'package:provider/provider.dart';

import 'dart:async';

import '../NavigatePage.dart';
import '../home.dart';
import 'SignInButton.dart';
import 'registerPage.dart';
import 'signup_nickname.dart';




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
      // throw NoProfile();
      await InhaAuth.signIn();

      print("현재 유저: ${InhaAuth.currentUser}");

      Navigator.pushAndRemoveUntil(
        context,
        CupertinoPageRoute(
          builder: (context) =>  NavigatePage(),
        ),
        (route) => false,
      );
    }
    on NoProfile{
      print("화원가입 이동");
      print(InhaToken.email);
      Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) =>  SignupNickname(email: InhaToken.email!,),
        ),
      );

    }
    catch(e){
      print(e);
    }
    //print(InhaAuth.currentUser);
  }

  Future<void> register()async{
    InhaAuth.signoutAndSignIn();
    _handleSignIn();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
appBar: AppBar(backgroundColor: Colors.transparent,),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(width: 2000,height: 32,),
              Text('매일 업데이트되는 일일미션',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -18.0 * 0.02,
                  color: Color(0xff262626),
                ),
              ),
              SizedBox(height: 3,),
              Text('일일미션이 매일 업데이트되려면 몇 명의 개발자가',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -14.0 * 0.02,
                  color: Color(0xff838383),
                ),
              ),
              Text('갈려나가야 할까?',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -14.0 * 0.02,
                  color: Color(0xff838383),
                ),
              ),
              SizedBox(height: 17,),
              Expanded(
                child: Container(width: 211,
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.all(Radius.circular(31)),
                  ),
                ),
              ),
              SizedBox(height: 21,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 4, height: 4,
                    decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: 4, height: 4,
                    decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: 4, height: 4,
                    decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                width: 343,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffE24035),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),

                child: InkWell(
                  onTap: (){
                    _handleSignIn();
                  },
                  child: Center(
                    child: Text("로그인",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -18.0 * 0.02,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14,),
              InkWell(
                onTap: (){
                  register();
                },
                child: Text("회원가입",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -18.0 * 0.02,
                    color: Color(0xffE24035),
                  ),
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        )
    );
  }
}
