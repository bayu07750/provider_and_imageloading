// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserPreference {
  final bool darkTheme;
  final String username;
  final String email;

  UserPreference({
    required this.darkTheme,
    required this.username,
    required this.email,
  });

  UserPreference copyWith({
    bool? darkTheme,
    String? username,
    String? email,
  }) {
    return UserPreference(
      darkTheme: darkTheme ?? this.darkTheme,
      username: username ?? this.username,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'darkTheme': darkTheme,
      'username': username,
      'email': email,
    };
  }

  factory UserPreference.fromMap(Map<String, dynamic> map) {
    return UserPreference(
      darkTheme: map['darkTheme'] as bool,
      username: map['username'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserPreference.fromJson(String source) => UserPreference.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserPreference(darkTheme: $darkTheme, username: $username, email: $email)';

  @override
  bool operator ==(covariant UserPreference other) {
    if (identical(this, other)) return true;

    return other.darkTheme == darkTheme && other.username == username && other.email == email;
  }

  @override
  int get hashCode => darkTheme.hashCode ^ username.hashCode ^ email.hashCode;
}
