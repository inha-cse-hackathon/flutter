class InhaToken {
  static String? email;
}

class InhaProfile {
  static  Map<String, dynamic> profile = {};
}

class InhaUser {
  InhaUser({required this.user});

  final Map<String, dynamic> user;

  String get email => user['email'] ?? "";
  String get nickname => user['nickname'] ?? "";

  @override
  String toString() {
    return"user: $email, $nickname";
  }

}
