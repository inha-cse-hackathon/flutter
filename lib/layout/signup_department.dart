import 'package:flutter/material.dart';

class SignupDepart extends StatelessWidget {
  const SignupDepart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 45.0,
        title: const Text('회원가입',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            letterSpacing: -18.0 * 0.02,
            color: Color(0xff262626),
          ),),
        // leadingWidth: 10,
        titleSpacing: 0,
        // leading: Container(color: Colors.blue,),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
            // 뒤로가기 버튼 누르면 이동하는 곳
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(17, 0, 17, 46),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 41,),
                  Text('잘했어요!',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -32.0 * 0.02,
                      color: Color(0xff262626),
                    ),
                  ),//
                  Text('이제 학과만 알려주세요.',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -32.0 * 0.02,
                      color: Color(0xff262626),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    height: 56,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text('컴퓨터공학과')
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              Container(
                width: 343,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffE24035),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                child: Center(
                  child: Text('회원가입',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -18.0 * 0.02,
                      color: Color(0xffFFFFFF),
                    ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
