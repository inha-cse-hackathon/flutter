import 'package:cse_hackathon_2022/style/MyStyle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_model.dart';
import 'text_forms.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
      body: ChangeNotifierProvider<EmailSignInModel>(
        create: (context) => EmailSignInModel(),
        child: Consumer<EmailSignInModel>(builder: (context, model, child) {
          return SafeArea(
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

                  const AddButton(),
                  const SizedBox(height: 18),
                  LoginButton(
                    onclick: () {
                      Provider.of<EmailSignInModel>(context, listen: false)
                          .login();
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
          );
        }),
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

class CheckToggle extends StatelessWidget {
  const CheckToggle(
      this.text,
      {
    Key? key,
    required this.onclick,
    required this.activate,
  }) : super(key: key);
  final String text;
  final VoidCallback onclick;
  final bool activate;

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 40,
      child: InkWell(
        onTap: onclick,
        child: Row(
          children: [
            Ink(
              height: 20,
              width: 20,
              decoration: activate
                  ? BoxDecoration(
                      color: ColorStyle.brand,
                      borderRadius: BorderRadius.circular(20),
                    )
                  : BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: ColorStyle.line1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
            ),
            const SizedBox(width: 9),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          CheckToggle("자동로그인",
            activate: Provider.of<EmailSignInModel>(context).isAutoLogin,
            onclick: () {
              Provider.of<EmailSignInModel>(context, listen: false)
                  .touchAutoLogin();
            },
          ),
          const SizedBox(width: 9),

          const SizedBox(width: 19),
          CheckToggle(
            "아이디 저장",
            activate: Provider.of<EmailSignInModel>(context).isSaveID,
            onclick: () {
              Provider.of<EmailSignInModel>(context, listen: false).touchSaveID();
            },
          ),
        ],
      ),
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
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
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
