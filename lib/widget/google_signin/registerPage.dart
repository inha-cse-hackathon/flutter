import 'package:cse_hackathon_2022/inha_quest/inhaApi/inmatRegister.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key,required this.email}) : super(key: key);

  final String email;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("회원가입 창"),),
      body: Column(children: [

        CupertinoButton(child: Text("회원가입!!"), onPressed: (){
          InMatRegister inMatRegister = InMatRegister();
          inMatRegister.registerEmail(user: {
            'nickname': 'name',
            'department': 'depart',
            'email': 'odsa@dsad.dsa'
          });


        })
      ],),);
  }
}
