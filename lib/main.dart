import 'package:cse_hackathon_2022/widget/authcheck.dart';
import 'package:flutter/material.dart';
import 'package:xtyle/xtyle.dart';

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
        fontFamily: 'NotoSansKR',
      ),
      home: const AuthCheck(),
    );
  }
}

