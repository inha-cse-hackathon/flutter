import 'package:flutter/material.dart';

import '../style/MyStyle.dart';


class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 169,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 99,
            width: 99,

            decoration: BoxDecoration(
              color: Color(0xffD9D9D9),
              borderRadius: BorderRadius.all(Radius.circular(500)),
            ),
          ),
          SizedBox(
            width: 26,
          ),
          Container(
            //color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "침착한 비버",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -24.0 * 0.02,
                    color: ColorStyle.text1,
                  ),
                ),
                Text(
                  "님 어서오세요",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -24.0 * 0.02,
                    color: ColorStyle.text1,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProfileChoose extends StatelessWidget {
  const ProfileChoose({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 11, top: 12, bottom: 23, right: 11),
      decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.black)),
      child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              SizedBox(
                width: 7,
              ),
              Text(
                '프로필 선택',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -16.0 * 0.02,
                  color: ColorStyle.text1,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Container(
                width: 54,
                height: 54,

                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(500)),
                    ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(500)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(500)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(500)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(500)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(500)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(500)),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

class NickNameChange extends StatelessWidget {
  const NickNameChange({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 17,
          ),
          Text(
            '닉네임',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              letterSpacing: -16.0 * 0.02,
              color: ColorStyle.text1,
            ),
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Expanded(
                child: Container(

                  height: 50,
                  color: Colors.cyan,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 109,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff5835E2))),
                child: Center(
                  child: Text(
                    '중복확인',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -16.0 * 0.02,
                      color: Color(0xff5835E2),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Text(
            '아이디',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              letterSpacing: -16.0 * 0.02,
              color: ColorStyle.text1,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.lightGreenAccent,
          ),
          SizedBox(height: 17,),
          Text(
            '비밀번호 재설정',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              letterSpacing: -16.0 * 0.02,
              color: ColorStyle.text1,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            width: 280,
            height: 50,
            color: Colors.lightGreenAccent,
          ),
          SizedBox(height: 6,),
          Container(
            width: 280,
            height: 50,
            color: Colors.lightGreenAccent,
          ),
        ],
      ),
    );
  }
}




