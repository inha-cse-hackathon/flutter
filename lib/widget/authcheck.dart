import 'package:cse_hackathon_2022/widget/NavigatePage.dart';
import 'package:cse_hackathon_2022/widget/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xtyle/xtyle.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({super.key});

  @override
  State<AuthCheck> createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('컴공 해커톤 테스트 화면'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const XtyleText(
              'Super프리미엄 리미티드Edition',
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
            const Text(
              'Super프리미엄 리미티드Edition',
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
            CupertinoButton(
              child: const Text("메인 페이지 이동"),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const NavigatePage(),
                  ),
                );
              },
            ),
            CupertinoButton(
              child: const Text("로그인 페이지 이동"),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
