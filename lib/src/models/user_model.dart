import 'package:flutter/foundation.dart';

class UserModel {
  String name;
  String email;
  String phone;
  String cpf;
  String password;

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.cpf,
  });
}