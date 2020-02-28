import 'package:flutter/material.dart';
import 'package:when_are_we_gonna_meet/common/ThemeInfo.dart';
import 'package:when_are_we_gonna_meet/ui/widgets/UserListTile.dart';

/// # FriendListPage.dart
/// 친구 목록 화면을 표시하기 위한 위젯 클래스입니다.
///
/// ## Author jhkim
/// ## Date 2020.02.23
class FriendListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '친구 목록',
          style: TextStyle(
            color: ThemeInfo().getThemeColor(),
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: ThemeInfo().getThemeColor(),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                /// 친구 신청이 있는 경우 시작
                Padding(
                  padding: EdgeInsets.only(
                    top: 15.0,
                    left: 8.0,
                    bottom: 8.0,
                  ),
                  child: Text(
                    '친구 신청',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                UserListTile(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15.0,
                    left: 8.0,
                    bottom: 8.0,
                  ),
                  child: Text(
                    '내 친구',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                /// 친구 신청이 있는 경우 끝
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
