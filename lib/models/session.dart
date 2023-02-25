import 'dart:convert';

import 'user.dart';

Session sessionFromJson(String str) => Session.fromJson(json.decode(str));

String sessionToJson(Session data) => json.encode(data.toJson());

class Session {
  Session({
    required this.session,
    this.mfa,
  });

  SessionClass session;
  dynamic mfa;

  factory Session.fromJson(Map<String, dynamic> json) => Session(
        session: SessionClass.fromJson(json["session"]),
        mfa: json["mfa"],
      );

  Map<String, dynamic> toJson() => {
        "session": session.toJson(),
        "mfa": mfa,
      };
}

class SessionClass {
  SessionClass({
    required this.accessToken,
    required this.accessTokenExpiresIn,
    required this.refreshToken,
    required this.user,
  });

  String accessToken;
  int accessTokenExpiresIn;
  String refreshToken;
  User user;

  factory SessionClass.fromJson(Map<String, dynamic> json) => SessionClass(
        accessToken: json["accessToken"],
        accessTokenExpiresIn: json["accessTokenExpiresIn"],
        refreshToken: json["refreshToken"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "accessTokenExpiresIn": accessTokenExpiresIn,
        "refreshToken": refreshToken,
        "user": user.toJson(),
      };
}
