import 'package:cse_hackathon_2022/style/MyStyle.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 45.0,
        title: const Text('로그인'),
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 41),
              Text(
                "그대를 기다리고 있었네",
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                "설빙 한딸기빙수",
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(height: 25),
              const IdInput(),
              const SizedBox(height: 5),
              const PassWordInput(),
              const SizedBox(height: 13),
              const AddButton(),
              const SizedBox(height: 30),
              LoginButton(
                onclick: () {
                  print("dsada");
                },
              ),
              Flexible(
                child: Container(
                    // color: Colors.blue,
                    ),
              ),
              const RegisterButton(),
              const SizedBox(
                height: 9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IdInput extends StatelessWidget {
  const IdInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorStyle.background1,
      child: TextFormField(
        style: Theme.of(context).textTheme.subtitle1,
        decoration: const InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding:
              EdgeInsets.only(top: 12, bottom: 10, left: 11, right: 8),
          fillColor: Colors.grey,
          hintText: "아이디를 입력하세요",
          hintStyle: TextStyle(
            fontSize: 16,
            color: ColorStyle.text2,
            letterSpacing: -16 * 0.02,
          ),
        ),
      ),
    );
  }
}

class PassWordInput extends StatelessWidget {
  const PassWordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorStyle.background1,
      child: TextFormField(
        style: Theme.of(context).textTheme.subtitle1,
        obscureText: true,
        obscuringCharacter: "*",
        decoration: const InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding:
              EdgeInsets.only(top: 12, bottom: 10, left: 11, right: 8),
          fillColor: Colors.grey,
          hintText: "비밀번호를 입력하세요",
          hintStyle: TextStyle(
            fontSize: 16,
            color: ColorStyle.text2,
            letterSpacing: -16 * 0.02,
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.onclick,
  }) : super(key: key);
  final VoidCallback onclick;

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 45,
      // color: Style.brand,

      decoration: BoxDecoration(
        color: ColorStyle.brand,
        borderRadius: const BorderRadius.all(Radius.circular(3)),
        boxShadow: [
          BoxShadow(
            color: ColorStyle.brand.withOpacity(0.6),
            blurRadius: 10,
            offset: const Offset(0, 12),
            // color: Color(0xff00D99E).withOpacity(.6),
            spreadRadius: -10,
          ),
        ],
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(3)),
        onTap: onclick,
        child: const Center(
          child: Text(
            "로그인",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              letterSpacing: -18.0 * 0.02,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: ColorStyle.brand,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(width: 9),
        Text(
          "자동로그인",
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(width: 19),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: ColorStyle.line1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(width: 9),
        Text(
          "아이디 저장",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}

class TextMiniButton extends StatelessWidget {
  const TextMiniButton(
      this.text, {
        Key? key,
        required this.onclick,
      }) : super(key: key);
  final VoidCallback onclick;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        onTap: onclick,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11.0, vertical: 4),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              letterSpacing: 14 * 0.02,
              color: ColorStyle.text2,
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextMiniButton(
          "회원가입",
          onclick: () {},
        ),
        Container(
          width: 1,
          height: 11,
          color: ColorStyle.line2,
        ),
        TextMiniButton(
          "아이디찾기",
          onclick: () {},
        ),
        Container(
          width: 1,
          height: 11,
          color: ColorStyle.line2,
        ),
        TextMiniButton(
          "비밀번호 찾기",
          onclick: () {},
        ),
      ],
    );
  }
}