import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 40.0,
        title: const Text('LOGO'),
        // leadingWidth: 10,
        titleSpacing: 0,
        // leading: Container(color: Colors.blue,),
        leading: IconButton(
          icon: const Icon(Icons.onetwothree_sharp),
          onPressed: () {
            Navigator.pop(context);
            // 뒤로가기 버튼 누르면 이동하는 곳
          },
        ),
        actions: [
          Icon(Icons.ice_skating)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 11,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 114,
                  height: 42,
                  child: Center(
                    child: Text('메인 미션',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -18.0 * 0.02,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff262626),
                    borderRadius: BorderRadius.all(Radius.circular(500)),
                  ),
                ),
                SizedBox(width: 6,),
                Container(
                  width: 132,
                  height: 42,
                  child: Center(
                    child: Text('학과별 미션',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -18.0 * 0.02,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff262626),
                    borderRadius: BorderRadius.all(Radius.circular(500)),
                  ),
                ),
                SizedBox(width: 6,),
                Container(
                  width: 114,
                  height: 42,
                  child: Center(
                    child: Text('주간 미션',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -18.0 * 0.02,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff262626),
                    borderRadius: BorderRadius.all(Radius.circular(500)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 17,),
            Container(
              width: 348,
              height: 294,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 348,
                    height: 202,
                    color: Colors.lightGreenAccent,
                  ),
                  SizedBox(height: 4,),
                  Text('정석 도서관에서 30분 앉아있기',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -18.0 * 0.02,
                      color: Color(0xff262626),
                    ),
                  ),
                  SizedBox(height: 11,),
                  Row(
                    children: [
                      Container(
                        width: 171,
                        height: 49,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            border: Border.all(color: Color(0xffF32F22))),
                        child: Center(child: Text('도전하기',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -18.0 * 0.02,
                            color: Color(0xffF32F22),
                          ),
                        )
                        ),
                      ),
                      SizedBox(width: 4,),
                      Container(
                        width: 171,
                        height: 49,
                        decoration: BoxDecoration(
                          color: Color(0xffF32F22),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                        child: Center(child: Text('도전하기',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -18.0 * 0.02,
                            color: Color(0xffFFFFFF),
                          ),
                        )
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: 348,
              height: 294,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 348,
                    height: 202,
                    color: Colors.lightGreenAccent,
                  ),
                  SizedBox(height: 4,),
                  Text('정석 도서관에서 30분 앉아있기',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -18.0 * 0.02,
                      color: Color(0xff262626),
                    ),
                  ),
                  SizedBox(height: 11,),
                  Row(
                    children: [
                      Container(
                        width: 171,
                        height: 49,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            border: Border.all(color: Color(0xffF32F22))),
                        child: Center(child: Text('도전하기',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -18.0 * 0.02,
                            color: Color(0xffF32F22),
                          ),
                        )
                        ),
                      ),
                      SizedBox(width: 4,),
                      Container(
                        width: 171,
                        height: 49,
                        decoration: BoxDecoration(
                          color: Color(0xffF32F22),
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                        child: Center(child: Text('도전하기',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -18.0 * 0.02,
                            color: Color(0xffFFFFFF),
                          ),
                        )
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Mission',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ranking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Messege',
          ),
        ],
      ),
    );
  }
}
