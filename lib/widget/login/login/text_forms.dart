import 'package:cse_hackathon_2022/style/MyStyle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_model.dart';

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
              decoration: const BoxDecoration(
                color: Color(0xffDBDBDB),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IdInput extends StatefulWidget {
  const IdInput({Key? key}) : super(key: key);

  @override
  State<IdInput> createState() => _IdInputState();
}

class _IdInputState extends State<IdInput> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: ColorStyle.background1,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (text) {
                Provider.of<EmailSignInModel>(context, listen: false)
                    .setID(text);
              },
              controller: controller,
              style: Theme.of(context).textTheme.subtitle1,
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(top: 13, bottom: 14, left: 11, right: 8),
                fillColor: Colors.grey,
                hintText: "아이디를 입력하세요",
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: ColorStyle.text2,
                  letterSpacing: -16 * 0.02,
                ),
              ),
            ),
          ),
          DeleteButton(
            onclick: () {
              Provider.of<EmailSignInModel>(context, listen: false).setID('');
              controller.clear();
            },
          ),
        ],
      ),
    );
  }
}

class PassWordInput extends StatefulWidget {
  const PassWordInput({Key? key}) : super(key: key);

  @override
  State<PassWordInput> createState() => _PassWordInputState();
}

class _PassWordInputState extends State<PassWordInput> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: ColorStyle.background1,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (text) {
                Provider.of<EmailSignInModel>(context, listen: false)
                    .setPassword(text);
              },
              controller: controller,
              style: Theme.of(context).textTheme.subtitle1,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(top: 13, bottom: 14, left: 11, right: 8),
                fillColor: Colors.grey,
                hintText: "비밀번호를 입력하세요",
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: ColorStyle.text2,
                  letterSpacing: -16 * 0.02,
                ),
              ),
            ),
          ),
          DeleteButton(
            onclick: () {
              Provider.of<EmailSignInModel>(context, listen: false)
                  .setPassword('');
              controller.clear();
            },
          ),
        ],
      ),
    );
  }
}
