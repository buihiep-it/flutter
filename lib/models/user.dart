import 'package:flutter_application_3/models/user_avatar.dart';
import 'package:flutter_application_3/models/user_name.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserAvatar avatar;
  final UserName name;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.avatar,
    required this.name,
  });

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
