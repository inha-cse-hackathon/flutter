import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,

        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 2000,height: 32,),
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
              Container(width: 211,height: 459,
                decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.all(Radius.circular(31)),
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
                  color: Color(0xff5835E2),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),

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
              SizedBox(height: 11,),
              Text("회원가입",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -18.0 * 0.02,
                  color: Color(0xff5835E2),
                ),
              ),
            ],
          ),
        )
    );
  }
}
