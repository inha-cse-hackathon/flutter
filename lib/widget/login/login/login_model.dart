import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showMessage(String text) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      fontSize: 16.0);
}

class EmailSignInModel with ChangeNotifier {
  String _username = "test123";
  String _password = "qwe12345&&";

  bool isAutoLogin = true;
  bool isSaveID = true;

  bool warning = false;
  bool onceWrong = false;

  String get id => _username;

  String get password => _password;

  setID(String username) {
    _username = username;
    warning=false;
    notifyListeners();
  }

  setPassword(String password) {
    _password = password;
    warning=false;
    notifyListeners();
  }

  touchAutoLogin() {
    isAutoLogin = isAutoLogin ? false : true;
    notifyListeners();
  }

  touchSaveID() {
    isSaveID = isSaveID ? false : true;
    notifyListeners();
  }

  login() async {
    print('id      : $id');
    print('password: $password');

    warning = true;
    onceWrong = true;
    notifyListeners();
    //"test123", "qwe12345&&");

    // try {
    //   await InMatAuth.instance.signInEmail(id, password);
    //   showMessage('로그인 성공: $id, $password');
    // } on SignInFailed {
    //   // 로그인 실패 메세지 띄우기
    //   showMessage('없는 아이디이거나 비밀번호가 틀렸습니다.\n$id, $password');
    // } catch (e) {
    //   // 오류 메세지 띄우기
    //   print(e);
    //   showMessage('$e');
    // }
  }
}
