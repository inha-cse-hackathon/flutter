import 'package:flutter/material.dart';

class Ranking extends StatelessWidget {
  const Ranking({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 40.0,
        title: const Text('Ranking'),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Lv.4',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -18.0 * 0.02,
                              color: Color(0xffF32F22),
                            ),),
                          SizedBox(width: 11,),
                          Text('SCE Shaco',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -20.0 * 0.02,
                              color: Color(0xff262626),
                            ),
                          ),
                        ],
                      ),
                      Text('죽음은 바람과 같지...',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -18.0 * 0.02,
                          color: Color(0xff838383),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6,),
              Container(
                width: 400,
                height: 82,
                decoration: BoxDecoration(
                  color: Color(0xffcccccc),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Lv.4',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -18.0 * 0.02,
                              color: Color(0xffF32F22),
                            ),),
                          SizedBox(width: 11,),
                          Text('SCE Shaco',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -20.0 * 0.02,
                              color: Color(0xff262626),
                            ),
                          ),
                        ],
                      ),
                      Text('죽음은 바람과 같지...',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -18.0 * 0.02,
                          color: Color(0xff838383),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6,),
              Container(
                width: 400,
                height: 82,
                decoration: BoxDecoration(
                  color: Color(0xffcccccc),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Lv.4',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -18.0 * 0.02,
                              color: Color(0xffF32F22),
                            ),),
                          SizedBox(width: 11,),
                          Text('SCE Shaco',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -20.0 * 0.02,
                              color: Color(0xff262626),
                            ),
                          ),
                        ],
                      ),
                      Text('죽음은 바람과 같지...',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -18.0 * 0.02,
                          color: Color(0xff838383),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6,),
              Container(
                width: 400,
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xffcccccc),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('4',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -18.0 * 0.02,
                              color: Color(0xff262626),
                            ),
                          ),
                          SizedBox(width: 36,),
                          Text('SCE Shaco',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -20.0 * 0.02,
                              color: Color(0xff262626),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6,),
              Container(
                width: 400,
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xffcccccc),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('5',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -18.0 * 0.02,
                              color: Color(0xff262626),
                            ),
                          ),
                          SizedBox(width: 36,),
                          Text('SCE Shaco',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -20.0 * 0.02,
                              color: Color(0xff262626),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6,),
              Container(
                width: 400,
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xffcccccc),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('6',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -18.0 * 0.02,
                              color: Color(0xff262626),
                            ),
                          ),
                          SizedBox(width: 36,),
                          Text('SCE Shaco',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -20.0 * 0.02,
                              color: Color(0xff262626),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
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
