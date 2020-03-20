import 'package:when_are_we_gonna_meet/core/models/User.dart';

/// # Group.dart
/// 그룹 모델의 정보를 담기 위한 클래스입니다.
class Group {
  final String id;
  final String title;
  final DateTime createDate;
  final User user;
  final List<User> userList;

  Group({
    String id,
    this.title,
    DateTime createDate,
    User user,
    List<User> userList
  })  : this.id = id ?? '',
        this.createDate = createDate ?? DateTime.now(),
        this.user = user ?? new User(),
        this.userList = userList ?? null;

  Group.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        createDate = json['createDate'],
        user = json['user'],
        userList = json['userList'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'createDate': createDate,
    'user': user,
    'userList': userList
  };
}
