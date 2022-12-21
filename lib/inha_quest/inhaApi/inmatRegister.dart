import 'inhaHttp.dart';

class InMatRegister extends InMatHttp {
  Future<void> registerEmail({required Map user}) async {
    print("회원가입 하는 중...");
    Map response = await publicPost(
        url: "http://54.83.101.17:8080/users/signup", body: user);

    print(response);
    // if (response['isSuccess'] == false) {
    //   print("회원가입 실패!");
    //
    //   // if (response['code'] == 3030) {
    //   //   throw OverlappingAccount();
    //   // } else if (response['code'] == 3035) {
    //   //   throw OverlappingNickName();
    //   // }
    //
    //   throw Exception('Failed to load 회원가입');
    // }
    // print("회원가입 성공!");
    // return;
  }
}

void main() {
  InMatRegister inMatRegister = InMatRegister();
  inMatRegister.registerEmail(user: {
    'nickname': 'name',
    'department': 'depart',
    'email': 'odsa@dsad.dsa'
  });


}

// 12 20
