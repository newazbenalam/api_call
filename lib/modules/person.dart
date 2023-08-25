import 'dart:convert';

class Person {
  final String name;
  final int id;
  final String phone;
  final String email;

  Person({
    required this.name,
    required this.id,
    required this.phone,
    required this.email,
  });

  Person copyWith({
    String? name,
    int? id,
    String? phone,
    String? email,
  }) =>
      Person(
        name: name ?? this.name,
        id: id ?? this.id,
        phone: phone ?? this.phone,
        email: email ?? this.email,
      );

  factory Person.fromJson(String str) => Person.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Person.fromMap(Map<String, dynamic> json) => Person(
        name: json["name"],
        id: json["id"],
        phone: json["phone"],
        email: json["email"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "id": id,
        "phone": phone,
        "email": email,
      };
}
