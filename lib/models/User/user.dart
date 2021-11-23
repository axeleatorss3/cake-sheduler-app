import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  String firstName;
  String lastName;
  String email;
  int age;
  String genere;

  User({this.age, this.email, this.genere, this.lastName, this.firstName});
  factory User.fromJson(Map<String, dynamic> json) => _$UserToJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
