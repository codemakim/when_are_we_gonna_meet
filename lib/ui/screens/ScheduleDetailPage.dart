import 'package:flutter/material.dart';
import 'package:when_are_we_gonna_meet/common/ThemeInfo.dart';

/// # ScheduleDetailPage.dart
/// 그룹 내 일정 상세 정보를 위한 페이지입니다.
///
/// # Author jhkim
/// # Date 2020.02.27
class ScheduleDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '일정 목록 제목',
          style: TextStyle(
            color: ThemeInfo().getThemeColor()
          ),
        ),
        iconTheme: IconThemeData(
          color: ThemeInfo().getThemeColor()
        ),
      ),
      body: Column(
        children: <Widget>[
          // 설정한 기간 표시
          Container(),
          // 캘린더 뷰 표시
          Container(),
          // 사용자 목록 표시
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
