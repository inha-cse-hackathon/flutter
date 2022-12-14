import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../inha/auth/inmat_auth.dart';
import '../../../inha/inhaApi/inhaHttp.dart';

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

  String get id => _username;

  String get password => _password;

  setID(String username) {
    _username = username;
    notifyListeners();
  }

  setPassword(String password) {
    _password = password;
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
