import 'package:when_are_we_gonna_meet/core/models/User.dart';

/// # Schedule.dart
/// 일정 모델의 정보를 담기 위한 클래스입니다.
///
/// ## Author: jhkim
/// ## Date: 200.05.13
class Schedule {
  final String id;
  final String title;
  final DateTime createDate;
  final User user;
  final List<User> userList;
  final DateTime rangeStartDate;
  final DateTime rangeEndDate;

  Schedule({
    String id,
    this.title,
    DateTime createDate,
    User user,
    List<User> userList,
    DateTime rangeStartDate,
    DateTime rangeEndDate
  })  : this.id = id ?? '',
        this.createDate = createDate ?? DateTime.now(),
        this.user = user ?? new User(),
        this.userList = userList ?? null,
        this.rangeStartDate = rangeStartDate ?? new DateTime.now().add(Duration(days: 1)),
        this.rangeEndDate = rangeEndDate ?? new DateTime.now().add(Duration(days: 28));

  Schedule.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        createDate = json['createDate'],
        user = json['user'],
        userList = json['userList'],
        rangeStartDate = json['rangeStartDate'],
        rangeEndDate = json['rangeEndDate'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'createDate': createDate,
    'user': user,
    'userList': userList,
    'rangeStartDate': rangeStartDate,
    'rangeEndDate': rangeEndDate,
  };
}
