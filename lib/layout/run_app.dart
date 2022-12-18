import 'package:cse_hackathon_2022/layout/onboard.dart';
import 'package:cse_hackathon_2022/layout/signup_department.dart';
import 'package:cse_hackathon_2022/layout/signup_nickname.dart';
import 'package:cse_hackathon_2022/style/MyStyle.dart';
import 'package:cse_hackathon_2022/widget/authcheck.dart';
import 'package:flutter/material.dart';
import 'package:xtyle/xtyle.dart';

import 'my_profile.dart';

void main() {
  Xtyle.init(
    configuration: XtyleConfig.korean(
      fontFamilyKor: 'NotoSansKR',
      defaultFontFamily: 'Roboto',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: ColorStyle.brand,
        fontFamily: 'NotoSansKR',
        canvasColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          centerTitle: false,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 18, color: ColorStyle.text1),
          iconTheme: IconThemeData(
            color: ColorStyle.text1,
          ),
        ),
        textTheme: MyTextTheme(),
        // backgroundColor: Colors.white,
      ),
      home: const SignupDepart(),
    );
  }

  TextTheme MyTextTheme() {
    return const TextTheme(
      headline1: TextStyle(
        fontSize: 36.0,
        fontWeight: FontWeight.w700,
        letterSpacing: -36.0 * 0.02,
        color: ColorStyle.text1,
      ),
      headline2: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.w700,
        letterSpacing: -32.0 * 0.02,
        color: ColorStyle.text1,
      ),
      headline3: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        letterSpacing: -24.0 * 0.02,
        color: ColorStyle.text1,
      ),
      headline4: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
        letterSpacing: -20.0 * 0.02,
        color: ColorStyle.text1,
      ),
      headline5: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
        letterSpacing: -18.0 * 0.02,
        color: ColorStyle.text1,
      ),
      bodyText1: TextStyle(
        fontSize: 18.0,
        letterSpacing: -18.0 * 0.02,
        color: ColorStyle.text1,
      ),

      bodyText2: TextStyle(
        fontSize: 16.0,
        letterSpacing: -14.0 * 0.02,
        color: ColorStyle.text1,
      ),
      subtitle1: TextStyle(
        fontSize: 14.0,
        letterSpacing: -14.0 * 0.02,
        color: ColorStyle.text1,
      ),
    );
  }
}
