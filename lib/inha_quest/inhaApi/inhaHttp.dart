import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class InMatHttp {
  Future<Map> publicGet({required String url,}) async {
    Uri uri = Uri.parse(url);

    final Response response = await http.get(
      uri,
      headers: {
        "Content-Type": "application/json",
        'Accept': 'application/json',
        //'Authorization': 'Bearer $token',
      },
    );

    // 요청 성공하면 리턴
    if (response.statusCode == 200||response.statusCode == 201) {
      print(json.decode(utf8.decode(response.bodyBytes)));
      return json.decode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception(
          'Failed to load get ${response.statusCode}, ${utf8.decode(response.bodyBytes)}');
    }
  }

  Future<Map> publicPost({required String url, required Map body}) async {
    Uri uri = Uri.parse(url);

    var bodyJson = json.encode(body);
    final Response response = await http.post(
      uri,
      headers: {
        "Content-Type": "application/json",
        'Accept': 'application/json',
      },
      body: bodyJson,
    );

    // 요청 성공하면 리턴
    if (response.statusCode == 200||response.statusCode == 201) {
      //print(utf8.decode(response.bodyBytes));
      print(json.decode(utf8.decode(response.bodyBytes)));
      print("sda");
      return json.decode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception(
          'Failed to load post ${response.statusCode}, ${utf8.decode(response.bodyBytes)}');
    }
  }

  Future<Map> publicPatch({required String url, required Map body,required String token}) async {
    Uri uri = Uri.parse(url);

    var bodyJson = json.encode(body);
    final Response response = await http.patch(
      uri,
      headers: {
        "Content-Type": "application/json",
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: bodyJson,
    );

    // 요청 성공하면 리턴
    if (response.statusCode == 200||response.statusCode == 201) {
      print(json.decode(utf8.decode(response.bodyBytes)));
      return json.decode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception(
          'Failed to load patch ${response.statusCode}, ${utf8.decode(response.bodyBytes)}');
    }
  }
}



class SignInFailed implements Exception {
  @override
  String toString() {
    return "없는 아이디이거나 비밀번호가 틀렸습니다.";
  }
}

class AccessDenied implements Exception {
  @override
  String toString() {
    return "접근에 권한이 없습니다.";
  }
}

class OverlappingAccount implements Exception {
  @override
  String toString() {
    return "중복된 아이디입니다.";
  }
}

class OverlappingNickName implements Exception {
  @override
  String toString() {
    return "중복된 닉네임 입니다.";
  }
}

void main() async {
  Uri uri = Uri.parse("http://54.83.101.17:8080/users/signup");

  var bodyJson = json.encode({
    'nickname':'name',
    'department':'depart',
    'email':'odsa@dsad.dsa'
  });
  final Response response = await http.post(
    uri,
    headers: {
      "Content-Type": "application/json",
      'Accept': 'application/json',
      //HttpHeaders.authorizationHeader: "Basic $token"
    },
  body: bodyJson,
  );
 // print(bodyJson);



  // 요청 성공하면 리턴
  if (response.statusCode == 200||response.statusCode ==201) {
    print(response.body);
    //print(json.decode(utf8.decode(response.bodyBytes)));
   //print(json.decode(utf8.decode(response.bodyBytes)));
  } else {
    throw Exception(
        'Failed to load post ${response.statusCode}, ${utf8.decode(response.bodyBytes)}');
  }


}
