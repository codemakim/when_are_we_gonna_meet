import 'package:flutter/material.dart';

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
        ),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
