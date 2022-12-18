import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 40.0,
        title: const Text('Message'),
        // leadingWidth: 10,
        titleSpacing: 80,
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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 11, 16, 0),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 82,
                decoration: BoxDecoration(
                  color: Color(0xffcccccc),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Row(

                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\'정석 학술 정보관 가보기 미션\'이',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -18.0 * 0.02,
                                color: Color(0xff262626),
                              ),
                            ),
                            Text('인증 완료되었습니다. 축하드립니다!',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -18.0 * 0.02,
                                color: Color(0xff262626),
                              ),
                            )
                          ],
                        )
                      ),
                      Icon(Icons.add)
                    ],
                  )
                )
              )
            ],
          ),
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
