class InhaToken {
  static String? email;
}

class InhaProfile {
  static  Map<String, dynamic> profile = {};
}

class InhaUser {
  InhaUser({required this.user});

  final Map<String, dynamic> user;

  String get email => user['userpw'] ?? "";
  String get nickname => user['nickname'] ?? "";
  String get department => user['userid'] ?? "";

  @override
  String toString() {
    //return InhaProfile.profile.toString();
    return"user: $email, $nickname, $department";
  }

}
