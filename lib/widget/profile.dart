import 'package:cse_hackathon_2022/inha_story/InHaAuth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'google_signin/SignIn.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // toolbarHeight: 40.0,
        title: const Text('Profile'),
        // leadingWidth: 10,
        // titleSpacing: 100,
        // leading: Container(color: Colors.blue,),
        // leading: IconButton(
        //   icon: const Icon(Icons.onetwothree_sharp),
        //   onPressed: () {
        //     Navigator.pop(context);
        //     // 뒤로가기 버튼 누르면 이동하는 곳
        //   },
        // ),
        // actions: [Icon(Icons.ice_skating)],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: 342,
                height: 124,
                child: Row(
                  children: [
                    Container(
                      width: 85,
                      height: 85,
                      color: Color(0xff000000),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${InhaAuth.currentUser.email}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -20.0 * 0.02,
                            color: Color(0xff262626),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Lv.1',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -20.0 * 0.02,
                                color: Color(0xffF32F22),
                              ),
                            ),
                            SizedBox(width: 120,),
                            Text(
                              'Lv.1',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -14.0 * 0.02,
                                color: Color(0xff838383),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 187,
                          height: 3,
                          color: Color(0xffF32F22),
                        ),
                        Text(
                          'exp 145/181',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -10.0 * 0.02,
                            color: Color(0xff838383),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(

                height: 52,
                color: Color(0xffcccccc),
                child: Center(
                  child: Text(
                    '아자아자 파이팅!',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -18.0 * 0.02,
                      color: Color(0xff262626),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(

                height: 126,
                color: Color(0xffcccccc),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(11, 13, 11, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '미션 인증 현황',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -16.0 * 0.02,
                          color: Color(0xff262626),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                '인증 현황',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -18.0 * 0.02,
                                  color: Color(0xff262626),
                                ),
                              ),
                              Text(
                                '12건',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -18.0 * 0.02,
                                  color: Color(0xffF32F22),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '인증 중',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -18.0 * 0.02,
                                  color: Color(0xff262626),
                                ),
                              ),
                              Text(
                                '2건',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -18.0 * 0.02,
                                  color: Color(0xff262626),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '인증 실패',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -18.0 * 0.02,
                                  color: Color(0xff262626),
                                ),
                              ),
                              Text(
                                '3건',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -18.0 * 0.02,
                                  color: Color(0xff262626),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(

                height: 52,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 11, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '나의 랭킹',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -16.0 * 0.02,
                          color: Color(0xff262626),
                        ),
                      ),
                      Text(
                        '1333등',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -16.0 * 0.02,
                          color: Color(0xff262626),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Spacer(),
              CupertinoButton(
                  child: Text("로그아웃"),
                  color: Color(0xffF32F22),
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
      ),
    );
  }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text("프로필"),
//     ),
//     body: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Column(crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text("프로필"),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//               Text("이메일:"),
//               Text("닉네임:"),
//               Text("학과:"),
//             ],),
//             SizedBox(width: 20,),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(" ${InhaAuth.currentUser.email}"),
//                 Text(" ${InhaAuth.currentUser.nickname}"),
//                 Text(" ${InhaAuth.currentUser.department}"),
//               ],
//             ),
//           ],),
//
//
//           CupertinoButton(
//               child: Text("로그아웃"),
//               onPressed: () async {
//                 await InhaAuth.signOut();
//
//                 Navigator.pushAndRemoveUntil(
//                   context,
//                   CupertinoPageRoute(
//                     builder: (context) => SignIn(),
//                   ),
//                   (route) => false,
//                 );
//               })
//         ],
//       ),
//     ),
//   );
// }
}
