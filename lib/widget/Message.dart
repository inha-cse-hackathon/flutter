import 'package:cse_hackathon_2022/widget/mission/jungseok.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("메세지"),),
      body: Center(child: Text("메세지"),),);
  }
}
