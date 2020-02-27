import 'package:flutter/material.dart';
import 'package:when_are_we_gonna_meet/common/ThemeInfo.dart';
import 'package:when_are_we_gonna_meet/ui/widgets/ScheduleListTile.dart';
import 'package:when_are_we_gonna_meet/ui/widgets/UserListTile.dart';

/// # GroupDetailPage.dart
/// 그룹의 상세 정보를 표시하기 위한 화면입니다.
///
/// ## Author: jhkim
/// ## Date: 2020.02.21
class GroupDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '그룹 이름',
          style: TextStyle(
            color: ThemeInfo().getThemeColor(),
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: ThemeInfo().getThemeColor(),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          /// 일정 목록 화면
          IconButton(
            icon: Icon(Icons.calendar_today),
            color: ThemeInfo().getThemeColor(),
            onPressed: () {},
          ),
          /// 참여 중인 사용자 목록 화면
          IconButton(
            icon: Icon(Icons.people_outline),
            iconSize: 30.0,
            color: ThemeInfo().getThemeColor(),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /// 해당 그룹에 참가한 인원 목록을 표시하기 위한 위넷입니다.
          Container(
            height: MediaQuery.of(context).size.height * 0.37,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 8.0, left: 15.0),
                  child: Text(
                    '참여 중인 친구 목록',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.all(8.0),
                    children: <Widget>[
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
          ),

          /// 그룹의 일정 목록을 표시하기 위한 위젯입니다.
          Expanded(
            child: Container(
              //height: MediaQuery.of(context).size.height * 0.385,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, bottom: 8.0, left: 15.0),
                    child: Text(
                      '일정 목록',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.all(8.0),
                      children: <Widget>[
                        ScheduleListTile(),
                        ScheduleListTile(),
                        ScheduleListTile(),
                        ScheduleListTile(),
                        ScheduleListTile(),
                        ScheduleListTile(),
                        ScheduleListTile(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: '일정 추가하기',
        onPressed: () {
          print('Pressed on Create Schedule Button');
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
