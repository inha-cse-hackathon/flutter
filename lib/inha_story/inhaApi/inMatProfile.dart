import 'inhaHttp.dart';
class NoProfile implements Exception {
  @override
  String toString() {
    return "프로필이 없습니다.";
  }
}

class InMatGetProfile extends InMatHttp {
  Future<Map<String, dynamic>?> getProfile({required String token}) async {
    print("프로필 불러오는 중...");
    // return null;
    // Map<String, dynamic> testMap = {'email': token, 'nickname': "인덕이"};
    // return testMap;

    Map response = await publicPost(
        url: "http://54.83.101.17:8080/users/email",body: {'email':token});

    if (response['isSuccess'] == false) {
      print("프로필 불러오기 실패!");

      // throw Exception(
      //     'Failed to load profile: ${response['code']}, ${response['message']}');
      return null;
    }
    print("프로필 불러오기 성공!");
    //print(response);
    //print(response.isEmpty);
    print(response);
    return {};
  }
}


void main() async{
  InMatGetProfile getProfile=InMatGetProfile();
  Map<String, dynamic>? pro=await getProfile.getProfile(token: "odsa@dsad.dsa");


  print(pro);
}