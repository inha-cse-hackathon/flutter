import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetLocation extends StatefulWidget {
  const GetLocation({Key? key}) : super(key: key);

  @override
  State<GetLocation> createState() => _GetLocationState();
}

class _GetLocationState extends State<GetLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
CupertinoButton(child: Text("Dsad"), onPressed: (){}),

      ],),
    );
  }
}
