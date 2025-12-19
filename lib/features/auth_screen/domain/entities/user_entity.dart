class UserEntity {
  final int userId;
  final String userName;
  final String userEmail;
  final String userRole;
  final String userToken;

  UserEntity({
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.userRole,
    required this.userToken,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
      userId: json['id'] ?? 0,
      userName: json['name'] ?? '',
      userEmail: json['email'] ?? '',
      userRole: json['role'] ?? '',
      userToken: json['token'] ?? '',
    );
  }
}
