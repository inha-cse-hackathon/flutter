import 'package:flutter/material.dart';

import '../../../style/MyStyle.dart';

class TextMiniButton extends StatelessWidget {
  const TextMiniButton(
      this.text, {
        Key? key,
        required this.onclick,
       required this.padding,
      }) : super(key: key);
  final VoidCallback onclick;
  final String text;
  final EdgeInsets padding;
  // final double? height;
  // final double? width;

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        onTap: onclick,
        child: Padding(
          padding: padding,
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
