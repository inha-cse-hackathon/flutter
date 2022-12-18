import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../inha_story/inhaApi/inMatProfile.dart';
import '../../inha_story/inhaApi/inmatRegister.dart';
import '../../inha_story/user.dart';
import '../home.dart';
import 'signup_de.dart';

String name='';

bool warning=false;

class SignupNickname extends StatefulWidget {
  const SignupNickname({Key? key,required this.email}) : super(key: key);


  final String email;

  @override
  State<SignupNickname> createState() => _SignupNicknameState();
}

class _SignupNicknameState extends State<SignupNickname> {
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
        padding: EdgeInsets.fromLTRB(17, 0, 17, 0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 41,),
                  Text('어서오세요, 용사님!',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -32.0 * 0.02,
                      color: Color(0xff262626),
                    ),
                  ),
                  Text('이름이 뭐예요?',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -32.0 * 0.02,
                      color: Color(0xff262626),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LoginField(
                        onChanged: (text) {
                          name=text;
                          warning=false;
                          setState(() {

                          });
                        },
                        onDelete: () {
                          name='';
                          warning=false;
                          setState(() {

                          });
                        },
                        hint: "닉네임을 입력하세요",
                      ),
                    ],
                  ),
                  AnimatedContainer(
                    height: warning ? 20 : 0,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeOutQuart,
                    child: const Text(
                      "닉네임을 입력 해 주세요",
                      style: TextStyle(fontSize: 14, color: Color(0xffFF3122)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      floatingActionButton:  InkWell(
        onTap: ()async{
          if(name!=''){
            print(widget.email);
            print(name);

            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) =>  SignupDe(email: widget.email,nickname: name),
              ),
            );
          }else{
            warning=true;
            setState(() {

            });
          }


        },
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xffE24035),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Icon(Icons.arrow_forward_sharp,color: Colors.white,size: 30,),
        ),
      ),
    );

  }
}

class LoginField extends StatefulWidget {
  const LoginField({
    Key? key,
    this.obscure = false,
    this.hint,
    required this.onChanged,
    required this.onDelete,
  }) : super(key: key);

  final bool obscure;
  final String? hint;
  final ValueChanged<String> onChanged;
  final VoidCallback onDelete;

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: warning? Color(0xffFFE0DE): Color(0xffF3F3F3),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: widget.onChanged,
              controller: controller,
              style: Theme.of(context).textTheme.subtitle1,
              obscureText: widget.obscure,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding:
                const EdgeInsets.only(top: 13, bottom: 14, left: 11, right: 8),
                hintText: widget.hint,
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: Color(0xff262626),
                  letterSpacing: -16 * 0.02,
                ),
              ),
            ),
          ),
          DeleteButton(
            onclick: () {
              widget.onDelete();
              controller.clear();
            },
          ),
        ],
      ),
    );
  }
}

class DeleteButton extends StatelessWidget {
  const DeleteButton({
    Key? key,
    required this.onclick,
  }) : super(key: key);
  final VoidCallback onclick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Ink(
        width: 48,
        height: 48,
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          onTap: onclick,
          child: Center(
            child: Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: warning? Color(0xffFFA6A6): Color(0xffDBDBDB),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}





