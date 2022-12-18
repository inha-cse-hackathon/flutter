import 'package:google_sign_in/google_sign_in.dart';

import 'inhaApi/inMatProfile.dart';
import 'inhaApi/inmatRegister.dart';
import 'user.dart';

class NoProfile implements Exception {
  @override
  String toString() {
    return "프로필이 없습니다.";
  }
}

class InhaAuth {
  static GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      // 'email',
      // 'https://www.googleapis.com/auth/contacts.readonly',
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
    String? email = await googleLogin();
    InhaToken.email = email;

    InMatGetProfile getProfile = InMatGetProfile();
    Map<String, dynamic>? profile = await getProfile.getProfile(token: email);
    if (profile == null) {
      throw NoProfile();
    } else {
      InhaProfile.profile = profile;
    }
  }

  static Future<void> signOut() async {
    await _googleSignIn.signOut();
  }

  static Future<void> signoutAndSignIn() async {
    await signOut();
    await signIn();
  }
}
