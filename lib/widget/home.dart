import 'package:flutter/material.dart';

import '../inha_story/InHaAuth.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: AppBar(
          title: Text('홈'),
        ),
      ),
      body: Container(child: Text(InhaAuth.currentUser.toString()),),
    );
  }
}
