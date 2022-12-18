import 'package:google_sign_in/google_sign_in.dart';

import 'inhaApi/inMatProfile.dart';
import 'user.dart';

class InhaAuth {
  static GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  static InhaUser get currentUser {
    //print( InhaProfile.profile);
    return InhaUser(user: InhaProfile.profile);
  }

  static Future<String> googleLogin() async {
    await _googleSignIn.signIn();
    String? email = _googleSignIn.currentUser?.email;
    if (email != null) {
      return email;
    } else {
      throw Exception("구글 로그인 실패");
    }
  }

  static Future<void> signIn() async {
    try {
      String? email = await googleLogin();
      InhaToken.email = email;

      InMatGetProfile getProfile=InMatGetProfile();
      Map<String, dynamic> profile= await getProfile.getProfile(token: email) ;
      //print(profile);

      InhaProfile.profile=profile;

      // 로그인 하면 처리하는 곳
    } catch (error) {
      print(error);
    }
  }
}
