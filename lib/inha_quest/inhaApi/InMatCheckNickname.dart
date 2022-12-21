
import 'inhaHttp.dart';

class InMatGetQuest extends InMatHttp {
  Future<Map> getQuest() async {
    print("퀘스트 불러오는 중...");

    return {
      "list":
      [{
        "id":1,
        "questname":"인경호 도착하기",
        "description":"인경호에 도착하세요!",
        "required_questlevel":0,"difficulty":1,
        "image":"http://54.83.101.17:8080/img/01.jpg"
      },
        {
        "id":2,
        "questname":"정석 도서관 도착하기",
        "description":"정석 도서관에 도착하세요!",
        "required_questlevel":0,"difficulty":1,
        "image":"http://54.83.101.17:8080/img/02.jpg"
      },

        {
          "id":3,
          "questname":"인덕이 사진찍기",
          "description":"인덕이의 사진을 찍으세요!",
          "required_questlevel":1,"difficulty":2,
          "image":"http://54.83.101.17:8080/img/03.jpg"
        },
      ]
    };
  //  Map body = {'nickName': nickName};

    Map response = await publicGet(
        url: "http://54.83.101.17:8080/getmainquests");

   // print(response);

    // if (response['isSuccess'] == false) {
    //   print("닉네임 중복 체크 실패!");
    //   if (response['code'] == 3035) {
    //     return false;
    //   }
    //   throw Exception(
    //       'Failed to check nickName: ${response['code']}, ${response['message']}');
    // }
    return response;
  }
}

void main() async{
  InMatGetQuest inMatCheckNickName=InMatGetQuest();
  await inMatCheckNickName.getQuest();


}
