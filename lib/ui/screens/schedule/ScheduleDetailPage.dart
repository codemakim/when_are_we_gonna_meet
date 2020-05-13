import 'package:flutter/material.dart';
import 'package:when_are_we_gonna_meet/common/ThemeInfo.dart';

/// # ScheduleDetailPage.dart
/// 그룹 내 일정 상세 정보를 위한 페이지입니다.
///
/// 보여줘야하는 위젯
/// - 각 사용자별 날짜 선택 현황
/// - 종합되어 보여지는 날짜 선택 현황
/// - 사용자 리스트
/// - 간단한 일정 정보
///
/// ## Author jhkim
/// ## Date 2020.02.27
/// ## Update 2020.05.13
class ScheduleDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '일정 제목',
          style: TextStyle(
            color: ThemeInfo().getThemeColor()
          ),
        ),
        iconTheme: IconThemeData(
          color: ThemeInfo().getThemeColor()
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          // 설정한 기간 표시
          Container(
            child: Text(
              '설정한 기간'
            ),
          ),
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
