class User {
  User({
    required this.id,
    required this.createdAt,
    required this.displayName,
    required this.avatarUrl,
    required this.locale,
    required this.email,
    required this.isAnonymous,
    required this.defaultRole,
    required this.metadata,
    required this.emailVerified,
    this.phoneNumber,
    required this.phoneNumberVerified,
    this.activeMfaType,
    required this.roles,
  });

  String id;
  DateTime createdAt;
  String displayName;
  String avatarUrl;
  String locale;
  String email;
  bool isAnonymous;
  String defaultRole;
  Metadata metadata;
  bool emailVerified;
  dynamic phoneNumber;
  bool phoneNumberVerified;
  dynamic activeMfaType;
  List<dynamic> roles;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
        displayName: json["displayName"],
        avatarUrl: json["avatarUrl"],
        locale: json["locale"],
        email: json["email"],
        isAnonymous: json["isAnonymous"],
        defaultRole: json["defaultRole"],
        metadata: Metadata.fromJson(json["metadata"]),
        emailVerified: json["emailVerified"],
        phoneNumber: json["phoneNumber"],
        phoneNumberVerified: json["phoneNumberVerified"],
        activeMfaType: json["activeMfaType"],
        roles: List<dynamic>.from(json["roles"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "createdAt": createdAt.toIso8601String(),
        "displayName": displayName,
        "avatarUrl": avatarUrl,
        "locale": locale,
        "email": email,
        "isAnonymous": isAnonymous,
        "defaultRole": defaultRole,
        "metadata": metadata.toJson(),
        "emailVerified": emailVerified,
        "phoneNumber": phoneNumber,
        "phoneNumberVerified": phoneNumberVerified,
        "activeMfaType": activeMfaType,
        "roles": List<dynamic>.from(roles.map((x) => x)),
      };
}

class Metadata {
  Metadata();

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata();

  Map<String, dynamic> toJson() => {};
}
