import 'package:cse_hackathon_2022/style/MyStyle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_model.dart';

class LoginInputs extends StatelessWidget {
  const LoginInputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoginField(
          onChanged: (text) {
            Provider.of<EmailSignInModel>(context, listen: false).setID(text);
          },
          onDelete: () {
            Provider.of<EmailSignInModel>(context, listen: false).setID('');
          },
          hint: "아이디를 입력하세요",
        ),
        const SizedBox(height: 5),
        LoginField(
          onChanged: (text) {
            Provider.of<EmailSignInModel>(context, listen: false)
                .setPassword(text);
          },
          onDelete: () {
            Provider.of<EmailSignInModel>(context, listen: false)
                .setPassword('');
          },
          hint: "비밀번호를 입력하세요",
          obscure: true,
        ),
        AnimatedContainer(
          height: Provider.of<EmailSignInModel>(context).warning ? 20 : 0,
          duration: const Duration(seconds: 1),
          curve: Curves.easeOutQuart,
          child: const Text(
            "아이디 또는 비밀번호가 일치하지 않습니다.",
            style: TextStyle(fontSize: 14, color: Color(0xffFF3122)),
          ),
        ),
      ],
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
                color: Provider.of<EmailSignInModel>(context).warning
                    ? const Color(0xffFFA6A6)
                    : const Color(0xffDBDBDB),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
            ),
          ),
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
      color: Provider.of<EmailSignInModel>(context).warning
          ? const Color(0xffFFE0DE)
          : ColorStyle.background1,
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
                  color: ColorStyle.text2,
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
