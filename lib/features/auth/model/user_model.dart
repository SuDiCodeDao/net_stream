import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final int id;
  final String name;
  final String email;
  final String avatar;
  final DateTime createAt;
  final Gender? gender;
  final DateTime? birthDate;
  final String? phone;

  const UserModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.avatar,
      required this.createAt,
      this.gender,
      this.birthDate,
      this.phone});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      avatar: map['avatar'],
      createAt: DateTime.parse(map['createAt']),
      gender:
          map['gender'] != null ? Gender.values[map['gender']] : Gender.other,
      birthDate: map['birthDate'] != null
          ? DateTime.parse(map['birthDate'])
          : DateTime(0001, 01, 01),
      phone: map['phone'],

    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'avatar': avatar,
      'createdAt': createAt.toIso8601String(),
      'gender': gender?.index,
      'birthDate': birthDate?.toIso8601String(),
      'phone': phone
    };
  }

  @override

  List<Object?> get props => [name, email, avatar, createAt, gender, birthDate, phone];
}

enum Gender { male, female, other }
