import 'package:when_are_we_gonna_meet/core/models/User.dart';

/// # Group.dart
/// 그룹 모델의 정보를 담기 위한 클래스입니다.
class Group {
  final String id;
  final String title;
  final DateTime createDate;
  final User user;

  Group({
    String id,
    this.title,
    DateTime createDate,
    User user,
  })  : this.id = id ?? '',
        this.createDate = createDate ?? DateTime.now(),
        this.user = user ?? new User();

  Group.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        createDate = json['createDate'],
        user = json['user'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
      };
}
