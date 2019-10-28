import 'dart:convert';

List<ListUser> listUserFromJson(String str) =>
    List<ListUser>.from(json.decode(str).map((x) => ListUser.fromJson(x)));

String listUserToJson(List<ListUser> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListUser {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  ListUser({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  String error;

  factory ListUser.fromJson(Map<String, dynamic> json) => ListUser(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  ListUser.withError(String error) {
    this.error = error;
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
