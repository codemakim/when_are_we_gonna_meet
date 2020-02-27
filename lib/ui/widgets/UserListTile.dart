import 'package:flutter/material.dart';
import 'package:when_are_we_gonna_meet/common/ThemeInfo.dart';

/// # UserListTile.dart
/// 친구 목록 아이템 위젯
///
/// ## Author jhkim
/// ## Date 2020.02.25
class UserListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print('taped item in user list');
        },
        title: Text(
          '친구명 1',
        ),
        subtitle: Text(
          'myFriend@gmail.com',
        ),
        leading: Container(
          width: 42.0,
          height: 42.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ThemeInfo().getThemeColor(),
          ),
          child: Text(
            '친',
            style: TextStyle(
              color: ThemeInfo().getThemeTextColor(),
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
