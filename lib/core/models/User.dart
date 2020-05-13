/// # User.dart
/// 사용자 정보를 담기 위한 클래스입니다.
class User {
  final String id;
  final String name;
  final List<User> friends;

  User({String id, name, List<User> friends})
      : this.id = id ?? '',
        this.name = name ?? '',
        this.friends = friends ?? null;

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        friends = json['friends'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'friends': friends,
      };
}
