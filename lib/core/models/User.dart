/// # User.dart
/// 사용자 정보를 담기 위한 클래스입니다.
class User {
  final String id;
  final List<User> friends;

  User({String id, List<User> friends})
      : this.id = id ?? '',
        this.friends = friends ?? null;

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        friends = json['friends'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'friends': friends,
      };
}
