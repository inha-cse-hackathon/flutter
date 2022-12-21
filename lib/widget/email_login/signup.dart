import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45.0,
        title: const Text('회원가입'),
        // leadingWidth: 10,
        titleSpacing: 0,
        // leading: Container(color: Colors.blue,),
        leading: IconButton(
          icon:  SvgPicture.asset(
            'assets/icons/back_arrow.svg',
            width: 30,
            height: 30,
          ),

          onPressed: () {
            Navigator.pop(context);
            // 뒤로가기 버튼 누르면 이동하는 곳
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 48),
                  const Text(
                    '우리의 가족이\n되어 주세요.',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.64,
                      color: Color(0xff262626),
                    ),
                  ),
                  const SizedBox(height: 21),
                  const Text(
                    '닉네임',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.32,
                      color: Color(0xff262626),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 6, 0),
                            padding: const EdgeInsets.fromLTRB(8, 14, 8, 13),
                            decoration: const BoxDecoration(
                              color: Color(0xfff3f3f3),
                            ),
                            child: const Text(
                              '침착한 비버',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.32,
                                color: Color(0xff262626),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 109,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff5735e2)),
                          ),
                          child: const Center(
                            child: Text(
                              '중복확인',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.32,
                                color: Color(0xff5735e2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: const Text(
                      '아이디',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.32,
                        color: Color(0xff262626),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupcwvv5Qh (LcG1rmQYoLqsMSLp7QCwvV)
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 6, 0),
                            padding: const EdgeInsets.fromLTRB(8, 14, 8, 13),
                            decoration: const BoxDecoration(
                              color: Color(0xfff3f3f3),
                            ),
                            child: const Text(
                              '아이디를 입력하세요.',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.32,
                                color: Color(0xff838383),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 109,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff5735e2)),
                          ),
                          child: const Center(
                            child: Text(
                              '중복확인',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.32,
                                color: Color(0xff5735e2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // yeV (17:882)
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: const Text(
                      '비밀번호',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.32,
                        color: Color(0xff262626),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupymurW8d (LcG2B1P9wqaNHrMmHZYMUR)
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                    padding: const EdgeInsets.fromLTRB(8, 14, 8, 13),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xfff3f3f3),
                    ),
                    child: const Text(
                      '비밀번호를 입력하세요.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.32,
                        color: Color(0xff838383),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 27),
                    padding: const EdgeInsets.fromLTRB(8, 14, 8, 13),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xfff3f3f3),
                    ),
                    child: const Text(
                      '비밀번호를 다시 입력하세요.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.32,
                        color: Color(0xff838383),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff5735e2),
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x5e5735e2),
                          offset: Offset(0, 3),
                          blurRadius: 5.5,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        '회원가입',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.36,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
